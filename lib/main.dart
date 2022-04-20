import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ui/auth/auth_provider.dart';
import 'ui/routing/routes.dart';
import 'ui/routing/router.dart' as router;

part 'main.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  final loggedIn = await container.read(authProvider.notifier).loggedIn;
  runApp(
    ProviderScope(
      child: MyApp(loggedIn),
    ),
  );
}

@hcwidget
Widget myApp(BuildContext context, WidgetRef ref, bool loggedIn) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      // fontFamily: 'Karla',
      primarySwatch: Colors.blue,
    ),
    initialRoute: loggedIn ? AppRoute.showList : AppRoute.login,
    onGenerateRoute: (settings) => router.generateRoute(settings),
  );
}
