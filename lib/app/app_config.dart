import 'app_config.default.dart';

/// 'app_config.local.dart' should be created for your development.
/// You can also create additional configurations depending on
/// your needs (remote, staging, etc.) but dont't forget to add
/// them to a .gitignore
/// Avoid storing sensitive information like API keys in your
/// configuration files unless you plan to encrypt them with
/// git-secret or similar tool
///
abstract class AppConfig {
  const AppConfig();

  String get baseUrl;
  String get apiUrl;

  /// Create instance of AppConfig depending on specified Environment
  factory AppConfig.fromEnvironment() {
    const env = String.fromEnvironment('ENV', defaultValue: 'unspecified');
    if (env == 'local') {
      // uncomment to activate local config
      // return AppConfigLocal();
      return AppConfigDefault();
    } else if (env == 'default') {
      return AppConfigDefault();
    } else {
      throw Exception('Environment not specified.');
    }
  }
}
