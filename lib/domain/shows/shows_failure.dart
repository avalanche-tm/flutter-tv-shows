import '../errors/exceptions.dart';
import '../errors/failure.dart';

class ShowsFailure extends Failure {
  ShowsFailure(Object errorObject) : super(errorObject);

  @override
  String get errorMsg => _createErrorMsg();

  String _createErrorMsg() {
    if (errorObject is InvalidShowsDataException ||
        errorObject is ShowsErrorResponseException) {
      return 'Loading shows failed';
    } else if (errorObject is ShowDetailsErrorResponseException) {
      return 'Loading show details failed';
    } else if (errorObject is ShowEpisodesErrorResponseException) {
      return 'Loading show episodes failed';
    } else {
      return 'Loading failed';
    }
  }
}
