import 'app_theme.dart';

/// Class containing [light] and [dark] theme and
/// [id] in form of String. If dark theme isn't specified,
/// light theme will be assigned to both.
class AppThemePair {
  final String id;
  final AppThemeData light;
  late final AppThemeData dark;

  AppThemePair({required this.id, required this.light, AppThemeData? dark}) {
    this.dark = dark ?? light;
  }
}
