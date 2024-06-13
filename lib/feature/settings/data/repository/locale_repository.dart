import 'dart:ui';

import 'package:todo_firebase/feature/settings/data/data_provider/locale_data_source.dart';

abstract interface class LocaleRepository {
  Future<Locale?> getLocale();
  Future<void> setLocale(Locale locale);
}

class LocaleRepositoryImpl implements LocaleRepository {
  final LocaleDataSource _localeDataSource;

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
