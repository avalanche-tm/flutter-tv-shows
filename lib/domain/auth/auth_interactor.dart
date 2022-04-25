import 'package:fpdart/fpdart.dart';

import '../storage/i_secure_storage_repository.dart';
import 'auth_failure.dart';
import 'i_auth_interactor.dart';
import 'i_auth_repository.dart';
import 'user.dart';

class AuthInteractor extends IAuthInteractor {
  final IAuthRepository _authRepository;
  final ISecureStorageRepository _secureStorageRepository;
  final _tokenKey = 'token';

  AuthInteractor(this._authRepository, this._secureStorageRepository);

  @override
  TaskEither<AuthFailure, Unit> init() {
    return _readToken(_tokenKey)
        .flatMap(_updateHttpAuthorizationHeader)
        .mapLeft((error) => AuthFailure(error))
        .map((token) => unit);
  }

  @override
  TaskEither<AuthFailure, User> login(
      String email, String password, bool rememberMe) {
    return _authRepository
        .login(email, password)
        .flatMap(
          (token) => _writeTokenToSecureStorage(token, _tokenKey, rememberMe),
        )
        .flatMap(_updateHttpAuthorizationHeader)
        .mapLeft((error) => AuthFailure(error))
        .map((token) => User(email));
  }

  @override
  TaskEither<AuthFailure, Unit> logout() {
    return _secureStorageRepository
        .deleteAll()
        .mapLeft((error) => AuthFailure(error));
  }

  @override
  Future<bool> get loggedIn async => (await _readToken(_tokenKey).run()).match(
        (error) => false,
        (token) => token.isNotEmpty,
      );

  TaskEither<Object, String> _writeTokenToSecureStorage(
    String token,
    String tokenKey,
    bool rememberMe,
  ) {
    return rememberMe
        ? _writeToSecureStorage(tokenKey, token).map((r) => token)
        : TaskEither.of(token);
  }

  TaskEither<Object, String> _updateHttpAuthorizationHeader(String token) {
    _authRepository.setAuthorizationHeader(token);
    return TaskEither.of(token);
  }

  TaskEither<Object, Unit> _writeToSecureStorage(String key, String token) {
    return _secureStorageRepository.write(key, token);
  }

  TaskEither<Object, String?> _readFromSecureStorage(String key) {
    return _secureStorageRepository.read(key);
  }

  TaskEither<Object, String> _readToken(String tokenKey) =>
      _readFromSecureStorage(tokenKey).flatMap<String>((token) => token == null
          ? TaskEither.left(Exception('error'))
          : TaskEither.of(token));
}
