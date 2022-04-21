import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<Object, String?>> login(String email, String password);
  void setAuthorizationHeader(String token);
}
