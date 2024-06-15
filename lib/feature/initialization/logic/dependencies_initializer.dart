import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_firebase/feature/auth/bloc/auth_bloc.dart';
import 'package:todo_firebase/feature/auth/data/converter/user_converter.dart';
import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_data_provider.dart';
import 'package:todo_firebase/feature/auth/data/repository/auth_repository.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';
import 'package:todo_firebase/feature/initialization/model/dependencies.dart';
import 'package:todo_firebase/feature/initialization/model/repositories.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';
import 'package:todo_firebase/feature/settings/data/codec/locale_codec.dart';
import 'package:todo_firebase/feature/settings/data/codec/theme_mode_codec.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/locale_data_source.dart';
import 'package:todo_firebase/feature/settings/data/data_provider/theme_data_source.dart';
import 'package:todo_firebase/feature/settings/data/repository/locale_repository.dart';
import 'package:todo_firebase/feature/settings/data/repository/theme_repository.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_data_provider.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';

abstract interface class DependenciesInitializer {
  Future<Dependencies> initialize(FirebaseAuth firebaseAuth);
}

class DefaultDependenciesInitializer implements DependenciesInitializer {
  @override
  Future<Dependencies> initialize(FirebaseAuth firebaseAuth) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final settingsBloc = await _initSettingsBloc(sharedPreferences);
    final authBloc = await _initAuthBloc(firebaseAuth);

    final repositories = Repositories(
      signUpRepository: await _initSignUpRepository(firebaseAuth),
      signInRepository: await _initSignInRepository(firebaseAuth),
    );
    final appRouter = AppRouter();

    return Dependencies(
      settingsBloc: settingsBloc,
      authBloc: authBloc,
      appRouter: appRouter,
      repositories: repositories,
    );
  }

  Future<SettingsBloc> _initSettingsBloc(
    SharedPreferences sharedPreferences,
  ) async {
    final localeRepository = LocaleRepositoryImpl(
      localeDataSource: LocaleDataSourceImpl(
        sharedPreferences: sharedPreferences,
        codec: LocaleCodec(),
      ),
    );

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

  Future<AuthBloc> _initAuthBloc(FirebaseAuth firebaseAuth) async {
    final authRepository = AuthRepositoryImpl(
      authDataProvider: AuthDataProviderFirebase(
        firebaseAuth: firebaseAuth,
        userConverter: UserConverter(),
      ),
    );

    final initState = AuthState.idle(
      userModel: await authRepository.getUser(),
    );

    return AuthBloc(authRepository: authRepository, initState: initState);
  }

  Future<SignInRepository> _initSignInRepository(
    FirebaseAuth firebaseAuth,
  ) async {
    return SignInRepositoryImpl(
      signInDataProvider: SignInDataProviderImpl(firebaseAuth: firebaseAuth),
    );
  }

  Future<SignUpRepository> _initSignUpRepository(
    FirebaseAuth firebaseAuth,
  ) async {
    return SignUpRepositoryImpl(
      signUpDataProvider: SignUpDataProviderImpl(firebaseAuth: firebaseAuth),
    );
  }
}
