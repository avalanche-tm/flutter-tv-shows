/// Wrappers for third party Exceptions that shouldn't be
/// mixed into domain
///
class AuthErrorResponseException implements Exception {}

class InvalidLoginTokenException implements Exception {}

class StorageTokenNotPresentException implements Exception {}

class InvalidShowsDataException implements Exception {}

class ShowsErrorResponseException implements Exception {}

class ShowDetailsErrorResponseException implements Exception {}

class ShowEpisodesErrorResponseException implements Exception {}
