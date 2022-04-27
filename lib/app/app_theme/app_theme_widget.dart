// Builder function to build themed widgets
import 'package:flutter/material.dart';
import 'app_theme_manager.dart';
import 'app_theme_pair.dart';

typedef ThemeBuilderFunc = Widget Function(ThemeData light, ThemeData dark);

class AppTheme<T> extends StatefulWidget {
  final ThemeMode initialMode;

  final List<AppThemePair> themes;
  final ThemeBuilderFunc builder;

  const AppTheme({
    Key? key,
    required this.themes,
    required this.initialMode,
    required this.builder,
  }) : super(key: key);

  @override
  _AppThemeState createState() => _AppThemeState<T>();

  /// Returns reference of the [AppTheme] which allows access of
  /// the state object of [AppTheme] in a restrictive way.
  static AppThemeManager<T> of<T>(BuildContext context) =>
      context.findAncestorStateOfType<State<AppTheme>>()! as AppThemeManager<T>;

  /// Returns reference of the [AppTheme] which allows access of
  /// the state object of [AppTheme] in a restrictive way.
  /// This returns null if the state instance of [AppTheme] is not found.
  static AppThemeManager<T>? maybeOf<T>(BuildContext context) {
    final state = context.findAncestorStateOfType<State<AppTheme>>();
    if (state == null) return null;
    return state as AppThemeManager<T>;
  }

  /// returns most recent theme mode. This can be used to eagerly get previous
  /// theme mode inside main method before calling [runApp].
  // static Future<AdaptiveThemeMode?> getThemeMode() async {
  //   return (await ThemePreferences.fromPrefs())?.mode;
  // }
}

class _AppThemeState<T> extends State<AppTheme>
    with WidgetsBindingObserver
    implements AppThemeManager<T> {
  late ThemeData _theme;
  late ThemeData _darkTheme;
  // late String _selectedThemePairId;
  late AppThemePair _selectedThemePair;
  // late ThemePreferences _preferences;
  // late ValueNotifier<AdaptiveThemeMode> _modeChangeNotifier;

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

    _setTheme(widget.themes[0].toString());

    // _modeChangeNotifier = ValueNotifier(widget.initial);
    // _preferences = ThemePreferences.initial(mode: widget.initial);
    // ThemePreferences.fromPrefs().then((pref) {
    //   if (pref == null) {
    //     _preferences.save();
    //   } else {
    //     _preferences = pref;
    //     if (mounted) setState(() {});
    //   }
    // });
    WidgetsBinding.instance?.addObserver(this);
  }

  void _setTheme(String themeId) {
    _selectedThemePair = getThemeById(themeId);
    // _selectedThemePairId = themeId;
    _theme = _selectedThemePair.light.theme;
    _darkTheme = _selectedThemePair.dark.theme;
  }

  // When device theme mode is changed, Flutter does not rebuild
  /// [CupertinoApp] and Because of that, if theme is set to
  /// [AdaptiveThemeMode.system]. it doesn't take effect. This check mitigates
  /// that and refreshes the UI to use new theme if needed.
  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    if (widget.initialMode == ThemeMode.system && mounted) {
      setState(() {});
    }
  }

  // @override
  // ValueNotifier<AdaptiveThemeMode> get modeChangeNotifier =>
  //     _modeChangeNotifier;

  @override
  ThemeData get theme {
    return _theme;
    // if (_preferences.mode.isSystem) {
    //   final brightness = SchedulerBinding.instance!.window.platformBrightness;
    //   return brightness == Brightness.light ? _theme : _darkTheme;
    // }
    // return _preferences.mode.isDark ? _darkTheme : _theme;
  }

  // @override
  // ThemeData get lightTheme => _theme;

  // @override
  // ThemeData get darkTheme => _darkTheme;

  // ThemeMode get mode => _preferences.mode;

  // @override
  // ThemeMode get mode => _preferences.mode;

  // @override
  // bool get isDefault =>
  //     _theme == widget.light &&
  //     _darkTheme == widget.dark &&
  //     _preferences.mode == _preferences.defaultMode;

  // @override
  // Brightness get brightness => theme.brightness;

  // @override
  // void setLight() => setThemeMode(ThemeMode.light);

  // @override
  // void setDark() => setThemeMode(ThemeMode.dark);

  // @override
  // void setSystem() => setThemeMode(ThemeMode.system);

  // @override
  // void setThemeMode(ThemeMode mode) {
  //   // _preferences.mode = mode;
  //   if (mounted) setState(() {});
  //   // _modeChangeNotifier.value = mode;
  //   // _preferences.save();
  // }

  @override
  void setTheme(String themeId) {
    _setTheme(themeId);
    if (mounted) {
      setState(() {});
    }
  }

  // @override
  // void toggleThemeMode() {
  //   final nextModeIndex = (mode.index + 1) % ThemeMode.values.length;
  //   final nextMode = AdaptiveThemeMode.values[nextModeIndex];
  //   setThemeMode(nextMode);
  // }

  // @override
  // Future<bool> persist() async => _preferences.save();

  // @override
  // Future<void> reset() async {
  //   // _preferences.reset();
  //   _theme = widget.light.copyWith();
  //   _darkTheme = widget.dark.copyWith();
  //   if (mounted) setState(() {});
  //   // modeChangeNotifier.value = mode;
  //   // return _preferences.save();
  // }

  @override
  Widget build(BuildContext context) => widget.builder(_theme, _darkTheme);

  @override
  void dispose() {
    // _modeChangeNotifier.dispose();
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  T get custom => widget.initialMode == ThemeMode.dark
      ? _selectedThemePair.dark.custom
      : _selectedThemePair.light.custom;

  @override
  String get name => _selectedThemePair.id;
}
