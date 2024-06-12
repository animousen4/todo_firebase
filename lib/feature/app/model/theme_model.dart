import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  ThemeModel({required this.themeMode})
      : darkTheme = ThemeData.dark(useMaterial3: true),
        lightTheme = ThemeData.light(useMaterial3: true);

  final ThemeMode themeMode;

  final ThemeData darkTheme;

  final ThemeData lightTheme;

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
