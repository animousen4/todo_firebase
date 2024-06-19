import 'dart:convert';
import 'dart:ui' as ui;

import 'package:shared_preferences/shared_preferences.dart';

/// Data source (data provider) of locale
/// Contains base methods for interacting with locale, like save or get
abstract interface class LocaleDataSource {

  /// Getting locale method
  Future<ui.Locale?> getLocale();

  /// Setting locale method
  Future<void> setLocale(ui.Locale locale);
}

/// Shared preferences implementation of [LocaleDataSource]
/// We are getting values from [SharedPreferences] and saving them here
class LocaleDataSourceImpl implements LocaleDataSource {
  final SharedPreferences _sharedPreferences;

  final Codec<ui.Locale, String> _codec;

  static const String _localeKey = "locale";

  /// Public constructor
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
