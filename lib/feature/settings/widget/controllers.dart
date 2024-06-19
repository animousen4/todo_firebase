import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';

/// Theme scope controller
abstract interface class ThemeScopeController {
  /// User can set theme
  void setThemeMode(ThemeMode themeMode);

  /// User can get theme
  ThemeModel get theme;
}

/// Locale scope controller
abstract interface class LocaleScopeController {
  /// User can set locale
  void setLocale(Locale locale);

  /// User can get locale
  Locale get locale;
}

/// Settings scope controller
abstract interface class SettingsScopeController
    implements ThemeScopeController, LocaleScopeController {}
