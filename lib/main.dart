import 'dart:async';

import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loggy/loggy.dart';

import 'app/app_config.dart';
import 'app/app_theme/app_theme_pair.dart';
import 'app/app_theme/app_theme_preferences.dart';
import 'app/app_theme/app_theme_widget.dart';

import 'app/theme.dart';
import 'presentation/auth/auth_provider.dart';
import 'presentation/providers/app_config_provider.dart';
import 'presentation/providers/navigator_provider.dart';
import 'presentation/providers/theme_preferences_provider.dart';
import 'presentation/routing/routes.dart';
import 'presentation/routing/router.dart' as router;

part 'main.g.dart';

void main() {
  runZonedGuarded(() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    Loggy.initLoggy();
    // catch Flutter errors
    FlutterError.onError = (FlutterErrorDetails details) {
      logError(details.toString());
      // log error and send crash analytics to server
      // Optionally: show widget telling your user how very sorry you are
      // for wasting their time and promise bug will be fixed asap :)
    };
    // initialize dependencies and provider container
    final appConfig = AppConfig.fromEnvironment();
    final navigatorKey = GlobalKey<NavigatorState>();
    final themePreferences = await AppThemePreferences.fromPrefs();
    final container = ProviderContainer(
      overrides: [
        navigatorProvider.overrideWithValue(navigatorKey),
        appConfigProvider.overrideWithValue(appConfig),
        themePreferencesProvider.overrideWithValue(themePreferences)
      ],
    );
    // initialize providers
    final auth = container.read(authProvider.notifier);
    await auth.init().run();
    final loggedIn = await auth.loggedIn;

    runApp(
      UncontrolledProviderScope(
        container: container,
        child: MyApp(loggedIn),
      ),
    );
  }, (error, stackTrace) {
    logError(error.toString());
    // catch unhandled erros outside Flutter framework
    // log them and send them to the server
    // Boil’em Mash’em Stick-em-in-a-Stew
  });
}

@hcwidget
Widget myApp(BuildContext context, WidgetRef ref, bool loggedIn) {
  final navigatorKey = ref.watch(navigatorProvider);
  final themePreferences = ref.watch(themePreferencesProvider);
  FlutterNativeSplash.remove();

  return AppTheme<CustomTheme>(
    // define themes in pairs and their id to switch between them
    themes: [
      AppThemePair(
        id: AppThemes.pink,
        light: PinkThemeLight(),
        dark: PinkThemeDark(),
      ),
      AppThemePair(
        id: AppThemes.green,
        light: GreenThemeLight(),
      ),
    ],
    preferences: themePreferences,
    builder: (lightTheme, darkTheme, mode) => MaterialApp(
      title: 'Flutter TV Shows',
      themeMode: mode,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: loggedIn ? AppRoute.showList : AppRoute.login,
      onGenerateRoute: (settings) => router.generateRoute(settings),
      navigatorKey: navigatorKey,
    ),
  );
}
