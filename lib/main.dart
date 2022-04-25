import 'dart:async';

import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/app_config.dart';
import 'app/theme.dart';
import 'ui/auth/auth_provider.dart';
import 'ui/providers/app_config_provider.dart';
import 'ui/providers/navigator_provider.dart';
import 'ui/routing/routes.dart';
import 'ui/routing/router.dart' as router;

part 'main.g.dart';

void main() {
  runZonedGuarded(() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    // catch Flutter errors
    // FlutterError.onError = (FlutterErrorDetails details) {
    //   FlutterError.presentError(details);
    //   // log error instead and send crash analytics to server
    //   // Optionally: show widget telling your user how very sorry you are
    //   // for wasting their time and promise bug will be fixed asap :)
    // };
    // initialize dependencies and provider container
    final appConfig = AppConfig.fromEnvironment();
    final navigatorKey = GlobalKey<NavigatorState>();
    final container = ProviderContainer(
      overrides: [
        navigatorProvider.overrideWithValue(navigatorKey),
        appConfigProvider.overrideWithValue(appConfig),
      ],
    );
    // initialize providers
    final auth = container.read(authProvider.notifier);
    await auth.init().run();
    final loggedIn = await auth.loggedIn;
    // await Future.delayed(const Duration(seconds: 5));
    runApp(
      UncontrolledProviderScope(
        container: container,
        child: MyApp(loggedIn),
      ),
    );
  }, (error, stackTrace) {
    final e = error;
    debugPrint(e.toString());
    // catch unhandled erros outside Flutter framework
    // log them and send them to the server
    // Boil’em Mash’em Stick-em-in-a-Stew
  });
}

@hcwidget
Widget myApp(BuildContext context, WidgetRef ref, bool loggedIn) {
  final navigatorKey = ref.read(navigatorProvider);
  FlutterNativeSplash.remove();

  return MaterialApp(
    title: 'Flutter TV Shows',
    theme: pinkTheme,
    initialRoute: loggedIn ? AppRoute.showList : AppRoute.login,
    onGenerateRoute: (settings) => router.generateRoute(settings),
    navigatorKey: navigatorKey,
  );
}
