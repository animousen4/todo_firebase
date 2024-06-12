import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  ThemeModel({required ThemeMode themeMode})
      : _themeMode = themeMode, _darkTheme = ThemeData.dark(useMaterial3: true),
        _lightTheme = ThemeData.light(useMaterial3: true);

  final ThemeMode _themeMode;

  final ThemeData _darkTheme;

  final ThemeData _lightTheme;

  /// Theme calculation based on ThemeMode
  ThemeData calculateTheme() {
    switch (_themeMode) {
      case ThemeMode.dark:
        return _darkTheme;
      case ThemeMode.light:
        return _lightTheme;
      case ThemeMode.system:
        return PlatformDispatcher.instance.platformBrightness == Brightness.dark
            ? _darkTheme
            : _lightTheme;
    }
  }
}
