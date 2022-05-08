import 'package:flutter/material.dart';

/// Holds getters for ThemeData [theme] and custom
/// theme extension [custom] of generic type T
abstract class AppThemeData<T> {
  ThemeData get theme;
  T get custom;
}
