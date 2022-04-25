import 'app_config.dart';

/// This is a default AppConfig used for demo purposes only.
/// Instead of using this configuration, you should create your
/// own 'app_config.local.dart'. You can also create additional
/// configurations depending on your needs (remote, staging, etc.)
/// but don't forget to add them to .gitignore file.
/// Avoid storing sensitive information like API keys unless
/// you plan to encrypt them with git-secret or similar tool
///
class AppConfigDefault extends AppConfig {
  @override
  String get apiUrl => 'https://api.infinum.academy/api';

  @override
  String get baseUrl => 'https://api.infinum.academy';
}
