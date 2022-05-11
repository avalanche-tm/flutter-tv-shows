import 'package:flutter/material.dart';

import '../app_theme/app_theme.dart';
import '../theme.dart';

class CustomPinkThemeDark extends CustomTheme {
  // @override
  // Color get customColor => Colors.black;
}

class PinkThemeDark extends AppThemeData<CustomTheme> {
  @override
  ThemeData get theme => ThemeData.dark().copyWith(
        checkboxTheme: ThemeData.dark().checkboxTheme.copyWith(
              side: const BorderSide(color: Colors.green, width: 2),
            ),
      );

  @override
  CustomTheme get custom => CustomPinkThemeDark();
}
