import 'package:flutter/material.dart';

abstract class AppThemeManager<T> {
  ThemeData get theme;
  T get custom;
  String get id;

  void setTheme(String themeId, ThemeMode mode);
}
