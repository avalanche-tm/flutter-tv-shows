import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Utility for storing theme info in SharedPreferences
class AppThemePreferences {
  late ThemeMode mode;
  late String themePairId;

  static const _prefKey = 'app_theme';

  AppThemePreferences({
    required this.mode,
    required this.themePairId,
  });

  AppThemePreferences.fromJson(Map<String, dynamic> json) {
    if (json['theme_mode'] != null) {
      mode = ThemeMode.values[int.parse(json['theme_mode'])];
    }
    if (json['theme_id'] != null) {
      themePairId = json['theme_id'];
    }
  }

  Map<String, dynamic> toJson() => {
        'theme_mode': mode.index.toString(),
        'theme_id': themePairId,
      };

  Future<bool> save() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(toJson());
    debugPrint('Saving preferences: $jsonString');
    return prefs.setString(_prefKey, jsonString);
  }

  static Future<AppThemePreferences?> fromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final themeDataString = prefs.getString(_prefKey);
      if (themeDataString == null || themeDataString.isEmpty) return null;
      return AppThemePreferences.fromJson(json.decode(themeDataString));
    } on Exception catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }
}
