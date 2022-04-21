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
  TaskEither<Object, Unit> init() {
    return _readToken(_tokenKey)
        .flatMap((token) => _updateHttpAuthorizationHeader(token))
        .map((r) => unit);
  }

  @override
  Future<Either<Object, User>> login(
      String email, String password, bool rememberMe) async {
    final token = await _authRepository.login(email, password);
    return token
        .flatMap<String>((r) => r == null ? left(Exception('error')) : right(r))
        .toTaskEither()
        .flatMap(
          (token) => rememberMe
              ? _writeToSecureStorage(_tokenKey, token)
                  .flatMap((r) => _writeToSecureStorage(_userEmailKey, email))
                  .map((r) => token)
              : TaskEither.of(token),
        )
        .flatMap((token) => _updateHttpAuthorizationHeader(token))
        .map((r) => User(email))
        .run();
  }

  TaskEither<Object, String> _updateHttpAuthorizationHeader(String token) {
    _authRepository.setAuthorizationHeader(token);
    return TaskEither.of(token);
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
  Future<bool> get loggedIn async => (await _readToken(_tokenKey).run()).match(
        (error) => false,
        (token) => token.isNotEmpty,
      );

  TaskEither<Object, Unit> _writeToSecureStorage(String key, String token) {
    return _secureStorageRepository.write(key, token);
  }

  TaskEither<Object, String?> _readFromSecureStorage(String key) {
    return _secureStorageRepository.read(key);
  }

  TaskEither<Object, String> _readToken(String tokenKey) =>
      _readFromSecureStorage(tokenKey).flatMap<String>((r) =>
          r == null ? TaskEither.left(Exception('error')) : TaskEither.of(r));
}
