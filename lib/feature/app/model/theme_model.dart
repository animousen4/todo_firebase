import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/sign_in/widget/components/data_landscape_container_theme_data.dart';

/// Model, which defines a theme of the App
class ThemeModel {
  /// Public constructor
  ThemeModel({required this.themeMode})
      : darkTheme = ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          extensions: [
            const DataLandscapeContainerThemeData(
              padding: EdgeInsets.all(26.0),
            ),
          ],
        ),
        lightTheme = ThemeData.light().copyWith(
          brightness: Brightness.light,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          extensions: [
            const DataLandscapeContainerThemeData(
              containerColor: Colors.white70,
              padding: EdgeInsets.all(26.0),
            ),
          ],
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
