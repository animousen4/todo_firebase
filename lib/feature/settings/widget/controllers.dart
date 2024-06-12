import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';

abstract interface class ThemeScopeController {
  void setThemeMode(ThemeMode themeMode);

  ThemeModel get theme;
}

abstract interface class LocaleScopeController {
  void setLocale(Locale locale);

  Locale get locale;
}

abstract interface class SettingsScopeController
    implements ThemeScopeController, LocaleScopeController {}
