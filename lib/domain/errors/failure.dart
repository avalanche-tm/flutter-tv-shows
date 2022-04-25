/// Used to wrap errors and exceptions and present
/// them with user friendly message
///
abstract class Failure {
  final Object errorObject;
  final StackTrace? stackTrace;
  String get errorMsg;

  Failure(this.errorObject, {this.stackTrace});
}
