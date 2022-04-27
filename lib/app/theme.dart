import 'package:flutter/material.dart';

import 'app_theme/app_theme_widget.dart';

export 'themes/green_theme_light.dart';
export 'themes/pink_theme_light.dart';
export 'themes/pink_theme_dark.dart';

class AppThemes {
  static const pink = 'pink';
  static const green = 'green';
}

abstract class CustomTheme {
  Color get customColor;
}

extension CustomThemeExtension on BuildContext {
  CustomTheme get customTheme => AppTheme.of<CustomTheme>(this).custom;
  ThemeData get theme => Theme.of(this);
}
