import 'package:flutter/material.dart';

import '../../ui/login/login_screen.dart';
import '../show_details/show_details_screen.dart';
import '../show_list/show_list_screen.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.showList:
      return MaterialPageRoute(
        builder: (context) => const ShowListScreen(),
      );
    case AppRoute.login:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case AppRoute.showDetails:
      return MaterialPageRoute(
        builder: (context) => ShowDetailsScreen(settings.arguments as String),
      );
    default:
      throw Exception('Route ${settings.name} doesn\'t exist');
  }
}
