import 'package:flutter/material.dart';

import 'app_theme/app_theme_widget.dart';

export 'themes/green_theme_light.dart';
export 'themes/pink_theme_light.dart';
export 'themes/pink_theme_dark.dart';

/// ids of themes defined as string
class AppThemes {
  static const pink = 'pink';
  static const green = 'green';
}

/// class holding additional custom properties which
/// ThemeData doesn't support
abstract class CustomTheme {
  // Color get customColor;
}

// shortcut to theme data and custom theme data
extension CustomThemeExtension on BuildContext {
  CustomTheme get customTheme => AppTheme.of<CustomTheme>(this).custom;
  ThemeData get theme => Theme.of(this);
}
