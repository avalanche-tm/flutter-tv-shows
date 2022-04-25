import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../../domain/errors/exceptions.dart';

typedef JsonResponse = Response<Map<String, dynamic>>;

class AuthRepository extends IAuthRepository {
  final Dio _httpClient;

  AuthRepository(this._httpClient);

  @override
  TaskEither<Object, String> login(String email, String password) {
    return TaskEither.tryCatch(
      () => _callLoginApi(email, password),
      _mapLoginError,
    )
        .map(_getTokenValue) //
        .flatMap(_checkTokenValid);
  }

  String? _getTokenValue(res) => res.data?['data']?['token']?.toString();

  TaskEither<Object, String> _checkTokenValid(String? token) => token == null
      ? TaskEither.left(InvalidLoginTokenException())
      : TaskEither.right(token);

  Future<JsonResponse> _callLoginApi(String email, String password) {
    const apiPath = '/users/sessions';
    return _httpClient
        .post(apiPath, data: {'email': email, 'password': password});
  }

  @override
  void setAuthorizationHeader(String token) =>
      _httpClient.options.headers['Authorization'] = 'Bearer $token';

  // mapping errors could be extracted to separate file...
  Object _mapLoginError(error, stackTrace) {
    if (error is DioError) {
      // Server responded with incorrect status
      if (error.type == DioErrorType.response) {
        return AuthErrorResponseException();
      }
    }
    return error;
  }
}
