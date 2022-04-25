import 'auth_failure.dart';
import 'user.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthInteractor {
  TaskEither<AuthFailure, Unit> init();
  TaskEither<AuthFailure, User> login(
    String email,
    String password,
    bool rememberMe,
  );
  TaskEither<AuthFailure, Unit> logout();
  Future<bool> get loggedIn;
}
