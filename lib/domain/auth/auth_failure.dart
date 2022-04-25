import '../errors/exceptions.dart';
import '../errors/failure.dart';

class AuthFailure extends Failure {
  AuthFailure(Object errorObject) : super(errorObject);

  @override
  String get errorMsg => _createErrorMsg();

  String _createErrorMsg() {
    if (errorObject is AuthErrorResponseException) {
      return 'Invalid username or password';
    } else {
      return 'Login failed';
    }
  }
}
