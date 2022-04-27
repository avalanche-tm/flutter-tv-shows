import 'package:flutter/material.dart';

import '../app_theme/app_theme.dart';
import '../theme.dart';

class CustomGreenThemeLight extends CustomTheme {
  @override
  Color get customColor => Colors.green;
}

class GreenThemeLight extends AppThemeData<CustomTheme> {
  @override
  ThemeData get theme => ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primaryColor: Colors.green,
        brightness: Brightness.light,
        checkboxTheme: ThemeData.light().checkboxTheme.copyWith(
              side: const BorderSide(color: Colors.green, width: 2),
            ),
      );

  @override
  CustomTheme get custom => CustomGreenThemeLight();
}
