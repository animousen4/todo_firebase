import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_firebase/feature/initialization/model/dependencies.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';
import 'package:todo_firebase/feature/settings/data/codec/locale_codec.dart';
import 'package:todo_firebase/feature/settings/data/codec/theme_mode_codec.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/locale_data_source.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/theme_data_source.dart';
import 'package:todo_firebase/feature/settings/data/repository/locale_repository.dart';
import 'package:todo_firebase/feature/settings/data/repository/theme_repository.dart';

abstract interface class DependenciesInitializer {
  Future<Dependencies> initialize();
}

class DefaultDependenciesInitializer implements DependenciesInitializer {
  @override
  Future<Dependencies> initialize() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final settingsBloc = await _initSettingsBloc(sharedPreferences);

    return Dependencies(settingsBloc: settingsBloc);
  }

  Future<SettingsBloc> _initSettingsBloc(
    SharedPreferences sharedPreferences,
  ) async {
    final localeRepository = LocaleRepositoryImpl(
        localeDataSource: LocaleDataSourceImpl(
            sharedPreferences: sharedPreferences, codec: LocaleCodec()));

    final themeRepository = ThemeRepositoryImpl(
      themeDataSource: ThemeDataSourceImpl(
        sharedPreferences: sharedPreferences,
        codec: ThemeModeCodec(),
      ),
    );

    final initState = SettingsState.idle(
      theme: await themeRepository.getTheme(),
      locale: await localeRepository.getLocale(),
    );

    return SettingsBloc(
      initState: initState,
      localeRepository: localeRepository,
      themeRepository: themeRepository,
    );
  }
}
