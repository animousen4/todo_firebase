import 'dart:ui';

import 'package:todo_firebase/feature/settings/data/data_provider/locale_data_source.dart';

/// Repository with locale, with methods of interacting with it
abstract interface class LocaleRepository {

  /// Getting locale
  Future<Locale?> getLocale();

  /// Saving locale
  Future<void> setLocale(Locale locale);
}

/// Base implementation of [LocaleRepository]
class LocaleRepositoryImpl implements LocaleRepository {
  final LocaleDataSource _localeDataSource;

  /// Public constructor
  LocaleRepositoryImpl({required LocaleDataSource localeDataSource}) : _localeDataSource = localeDataSource;


  @override
  Future<Locale?> getLocale() {
    return _localeDataSource.getLocale();
  }

  @override
  Future<void> setLocale(Locale locale) async {
    await _localeDataSource.setLocale(locale);
  }
}
