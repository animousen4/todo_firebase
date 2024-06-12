part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateTheme(ThemeModel themeModel) = _UpdateTheme;
  const factory SettingsEvent.updateLocale(Locale locale) = _UpdateLocale;

}