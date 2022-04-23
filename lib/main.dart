import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/theme.dart';
import 'ui/auth/auth_provider.dart';
import 'ui/providers/navigator_provider.dart';
import 'ui/routing/routes.dart';
import 'ui/routing/router.dart' as router;

part 'main.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final navigatorKey = GlobalKey<NavigatorState>();
  final container = ProviderContainer();
  final auth = container.read(authProvider.notifier);
  final authInitRes = await auth.init().run();
  //TODO: handle auth init errors
  final loggedIn = await auth.loggedIn;

  runApp(
    ProviderScope(
      overrides: [
        navigatorProvider.overrideWithValue(navigatorKey),
      ],
      child: MyApp(loggedIn, navigatorKey),
    ),
  );
}

@hcwidget
Widget myApp(BuildContext context, WidgetRef ref, bool loggedIn,
    GlobalKey<NavigatorState> navigatorKey) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: pinkTheme,
    // theme: ThemeData(
    //   fontFamily: 'Karla',
    //   primarySwatch: Colors.pink,
    //   primaryColor: const Color(0xFFff758c),
    //   buttonTheme: const ButtonThemeData(disabledColor: Color(0xFFff758c)),
    //   floatingActionButtonTheme:
    //       ThemeData.light().floatingActionButtonTheme.copyWith(
    //             backgroundColor: const Color(0xFFff758c),
    //           ),
    // ),
    initialRoute: loggedIn ? AppRoute.showList : AppRoute.login,
    onGenerateRoute: (settings) => router.generateRoute(settings),
    navigatorKey: navigatorKey,
  );
}
