import 'package:fpdart/fpdart.dart';

import '../storage/i_secure_storage_repository.dart';
import 'i_auth_interactor.dart';
import 'i_auth_repository.dart';
import 'user.dart';

class AuthInteractor extends IAuthInteractor {
  final IAuthRepository _authRepository;
  final ISecureStorageRepository _secureStorageRepository;
  final _tokenKey = 'token';
  final _userEmailKey = 'userEmail';

  AuthInteractor(this._authRepository, this._secureStorageRepository);

  @override
  Future<Either<Object, User>> login(
      String email, String password, bool rememberMe) async {
    final token = await _authRepository.login(email, password);
    return token
        .flatMap<String>((r) => r == null ? left(Exception('error')) : right(r))
        .toTaskEither()
        .flatMap(
          (r) => rememberMe
              ? _writeToSecureStorage(_tokenKey, r)
              : TaskEither.of(unit),
        )
        .andThen(
          () => rememberMe
              ? _writeToSecureStorage(_userEmailKey, email)
              : TaskEither.of(unit),
        )
        .map((r) => User(email))
        .run();
  }

  @override
  Future<Either<Object, Unit>> logout() async {
    return await _secureStorageRepository.deleteAll().run();
  }

  @override
  Future<Either<Object, User>> get currentUser async =>
      (await _readFromSecureStorage(_userEmailKey).run())
          .flatMap<String>(
              (r) => r == null ? left(Exception('error')) : right(r))
          .map((email) => User(email));

  @override
  Future<bool> get loggedIn async =>
      (await _readFromSecureStorage(_tokenKey).run()).match(
        (error) => false,
        (token) => token != null,
      );

  TaskEither<Object, Unit> _writeToSecureStorage(String key, String token) {
    return _secureStorageRepository.write(key, token);
  }

  TaskEither<Object, String?> _readFromSecureStorage(String key) {
    return _secureStorageRepository.read(key);
  }
}
