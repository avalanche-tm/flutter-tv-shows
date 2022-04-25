import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  TaskEither<Object, String> login(String email, String password);
  void setAuthorizationHeader(String token);
}
