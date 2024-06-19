import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';

/// Theme data source (data provider)
/// Contains base methods for interacting with theme, like save or get
abstract interface class ThemeDataSource {

  /// Getting theme
  Future<ThemeModel?> getTheme();

  /// Saving theme
  Future<void> setTheme(ThemeModel model);
}

/// [SharedPreferences] implementation of [ThemeDataSource]
class ThemeDataSourceImpl implements ThemeDataSource {
  final SharedPreferences _sharedPreferences;

  final Codec<ThemeMode, String> _codec;

  static const String _themeModeKey = "themeMode";

  /// Public constructor
  ThemeDataSourceImpl(
      {required SharedPreferences sharedPreferences,
      required Codec<ThemeMode, String> codec,})
      : _sharedPreferences = sharedPreferences,
        _codec = codec;

  @override
  Future<ThemeModel?> getTheme() async {
    final themeModeString = _sharedPreferences.getString(_themeModeKey);

    if (themeModeString != null) {
      return ThemeModel(
          themeMode: _codec.decode(themeModeString),);
    }

    return null;
  }

  @override
  Future<void> setTheme(ThemeModel model) async {
    final themeModeString = _codec.encode(model.themeMode);

    await _sharedPreferences.setString(_themeModeKey, themeModeString);
  }
}
