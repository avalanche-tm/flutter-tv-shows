import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/auth/i_auth_repository.dart';

typedef JsonResponse = Response<Map<String, dynamic>>;

class AuthRepository extends IAuthRepository {
  final Dio _httpClient;

  AuthRepository(this._httpClient);

  @override
  Future<Either<Object, String?>> login(String email, String password) async {
    return await TaskEither.tryCatch(
      () => _loginWithEmail(email, password),
      (error, stackTrace) => error,
    ).map((res) => res.data?['data']['token'].toString()).run();
  }

  Future<JsonResponse> _loginWithEmail(String email, String password) {
    const apiPath = '/users/sessions';
    return _httpClient
        .post(apiPath, data: {'email': email, 'password': password});
  }

  @override
  void setAuthorizationHeader(String token) =>
      _httpClient.options.headers['Authorization'] = 'token $token';
}
