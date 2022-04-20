import 'user.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthInteractor {
  Future<Either<Object, User>> login(
    String email,
    String password,
    bool rememberMe,
  );
  Future<Either<Object, Unit>> logout();
  Future<Either<Object, User>> get currentUser;
  Future<bool> get loggedIn;
}
