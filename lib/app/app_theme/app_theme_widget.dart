import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'app_theme_manager.dart';
import 'app_theme_pair.dart';
import 'app_theme_preferences.dart';

typedef ThemeBuilderFunc = Widget Function(
  ThemeData light,
  ThemeData dark,
  ThemeMode mode,
);

class AppTheme<T> extends StatefulWidget {
  final AppThemePreferences? preferences;
  final List<AppThemePair> themes;
  final ThemeBuilderFunc builder;

  const AppTheme({
    Key? key,
    required this.themes,
    required this.builder,
    this.preferences,
  }) : super(key: key);

  @override
  _AppThemeState createState() => _AppThemeState<T>();

  static AppThemeManager<T> of<T>(BuildContext context) =>
      context.findAncestorStateOfType<State<AppTheme>>()! as AppThemeManager<T>;
}

class _AppThemeState<T> extends State<AppTheme>
    with WidgetsBindingObserver
    implements AppThemeManager<T> {
  late ThemeData _theme;
  late ThemeData _darkTheme;
  late ThemeMode _mode;
  late AppThemePreferences _preferences;
  late AppThemePair _selectedThemePair;

  AppThemePair getThemeById(String themeId) {
    return widget.themes.firstWhere(
      (element) => element.id == themeId,
      orElse: () => widget.themes[0],
    );
  }

  @override
  void initState() {
    super.initState();
    assert(
      widget.themes.isNotEmpty,
      'At least one AppThemePair must be supplied.',
    );
    _preferences = widget.preferences ??
        AppThemePreferences(
          mode: ThemeMode.system,
          themePairId: widget.themes[0].id,
        );

    _setTheme(_preferences.themePairId, _preferences.mode);

    WidgetsBinding.instance?.addObserver(this);
  }

  void _setTheme(String themeId, ThemeMode mode) {
    _selectedThemePair = getThemeById(themeId);
    _theme = _selectedThemePair.light.theme;
    _darkTheme = _selectedThemePair.dark.theme;
    _mode = mode;
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    if (_mode == ThemeMode.system && mounted) {
      setState(() {});
    }
  }

  @override
  ThemeData get theme => _theme;

  @override
  void setTheme(String themeId, ThemeMode mode) {
    _setTheme(themeId, mode);
    _preferences = AppThemePreferences(mode: mode, themePairId: themeId);
    _preferences.save();
    if (mounted) {
      setState(() {});
    }
  }

  Brightness get brightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  @override
  Widget build(BuildContext context) => widget.builder(
        _theme,
        _darkTheme,
        _mode,
      );

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  T get custom {
    if (_mode == ThemeMode.system) {
      return brightness == Brightness.light
          ? _selectedThemePair.light.custom
          : _selectedThemePair.dark.custom;
    } else {
      return _mode == ThemeMode.light
          ? _selectedThemePair.light.custom
          : _selectedThemePair.dark.custom;
    }
  }

  @override
  String get id => _selectedThemePair.id;
}
