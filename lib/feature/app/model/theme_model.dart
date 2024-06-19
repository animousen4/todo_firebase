import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Model, which defines a theme of the App
class ThemeModel {

  /// Public constructor
  ThemeModel({required this.themeMode})
      : darkTheme = ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),),
        ),
        lightTheme = ThemeData.light().copyWith(
          brightness: Brightness.light,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),),
        );

  /// Mode (dark/light)
  final ThemeMode themeMode;
  
  /// Dark [ThemeData]
  final ThemeData darkTheme;

  /// Light [ThemeData]
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
