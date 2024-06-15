import 'package:todo_firebase/feature/auth/bloc/auth_bloc.dart';
import 'package:todo_firebase/feature/initialization/model/repositories.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';

/// Dependencies container
class Dependencies {
  /// [SettingsBloc] instance
  final SettingsBloc settingsBloc;

  /// [AuthBloc] instance
  final AuthBloc authBloc;

  /// [AppRouter] instance
  final AppRouter appRouter;

  /// [Repositories] insance, used for storing all repos
  final Repositories repositories;

  /// Public constructor
  Dependencies({required this.settingsBloc, required this.authBloc, required this.appRouter, required this.repositories});
}
