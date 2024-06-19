import 'dart:convert';
import 'dart:ui' as ui;

import 'package:shared_preferences/shared_preferences.dart';

abstract interface class LocaleDataSource {
  Future<ui.Locale?> getLocale();

  Future<void> setLocale(ui.Locale locale);
}

class LocaleDataSourceImpl implements LocaleDataSource {
  final SharedPreferences _sharedPreferences;

  final Codec<ui.Locale, String> _codec;

  static const String _localeKey = "locale";

  LocaleDataSourceImpl(
      {required SharedPreferences sharedPreferences,
      required Codec<ui.Locale, String> codec,})
      : _sharedPreferences = sharedPreferences,
        _codec = codec;
  @override
  Future<ui.Locale?> getLocale() async {
    final localeString = _sharedPreferences.getString(_localeKey);

    if (localeString != null) {
      return _codec.decode(localeString);
    }

    return null;
  }

  @override
  Future<void> setLocale(ui.Locale locale) async {
    await _sharedPreferences.setString(_localeKey, _codec.encode(locale));
  }
}
