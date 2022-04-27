import 'package:flutter/material.dart';

abstract class AppThemeData<T> {
  ThemeData get theme;
  T get custom;
}
