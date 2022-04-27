import 'app_theme.dart';

class AppThemePair {
  final String id;
  final AppThemeData light;
  late final AppThemeData dark;

  AppThemePair({required this.id, required this.light, AppThemeData? dark}) {
    this.dark = dark ?? light;
  }
}
