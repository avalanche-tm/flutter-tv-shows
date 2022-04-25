import '../errors/failure.dart';

class SecureStorageFailure extends Failure {
  SecureStorageFailure(Object errorObject) : super(errorObject);

  @override
  String get errorMsg => _createErrorMsg();

  String _createErrorMsg() {
    // let's keep it simple...
    return 'Secure Storage failure.';
  }
}
