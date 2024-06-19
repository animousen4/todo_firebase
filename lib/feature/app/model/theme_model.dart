import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  ThemeModel({required this.themeMode})
      : darkTheme = ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        lightTheme = ThemeData.light().copyWith(
          brightness: Brightness.light,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        );

  bool get isDark => themeMode == ThemeMode.dark;

  final ThemeMode themeMode;

  final ThemeData darkTheme;

  final ThemeData lightTheme;

  /// Theme calculation based on ThemeMode
  ThemeData calculateTheme() {
    switch (themeMode) {
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.light:
        return lightTheme;
      case ThemeMode.system:
        return PlatformDispatcher.instance.platformBrightness == Brightness.dark
            ? darkTheme
            : lightTheme;
    }
  }
}
