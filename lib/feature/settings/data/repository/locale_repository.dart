import 'dart:ui';

abstract interface class LocaleRepository {
  Future<Locale?> getLocale();
  Future<void> setLocale(Locale locale);
}

class LocaleRepositoryImpl implements LocaleRepository{
  @override
  Future<Locale?> getLocale() {
    // TODO: implement getLocale
    throw UnimplementedError();
  }

  @override
  Future<void> setLocale(Locale locale) {
    // TODO: implement setLocale
    throw UnimplementedError();
  }

}
