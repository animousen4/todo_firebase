import 'package:todo_firebase/feature/auth/bloc/auth_bloc.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';

/// Dependencies container
class Dependencies {
  /// [SettingsBloc] instance
  final SettingsBloc settingsBloc;

  final AuthBloc authBloc;

  final AppRouter appRouter;

  /// Public constructor
  Dependencies({required this.settingsBloc, required this.authBloc, required this.appRouter});
}
