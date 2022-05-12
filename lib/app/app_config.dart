import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  final String baseUrl;
  final String apiUrl;

  AppConfig({
    required this.baseUrl,
    required this.apiUrl,
  });

  factory AppConfig._fromDotEnv() {
    return AppConfig(
      baseUrl: dotenv.env['BASE_URL'] ?? '',
      apiUrl: dotenv.env['API_URL'] ?? '',
    );
  }

  /// If --dart-define ENV variable is not found, '.env' file
  /// gets read, otherwise '.env' is merged with the value
  /// from ENV. For example if --dart-define ENV=production,
  /// '.env.production' gets read.
  static Future<AppConfig> fromDotEnv() async {
    const env = bool.hasEnvironment('ENV') //
        ? String.fromEnvironment('ENV')
        : null;

    const envFileName = env != null ? '.env.$env' : '.env';

    await dotenv.load(
      fileName: 'lib/app/env/$envFileName',
      mergeWith: Platform.environment,
    );
    return AppConfig._fromDotEnv();
  }
}
