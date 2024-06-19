
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/auth/data/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

/// Bloc, which decides whether user have access to app or dont
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  late final StreamSubscription<UserModel?> _subscription;
  
  /// Public constuctor with initial state
  AuthBloc({
    required AuthRepository authRepository,
    required AuthState initState,
  })  : _authRepository = authRepository,
        super(initState) {
    on<AuthEvent>((event, emit) {
      event.map(
        userAuthChanged: (event) => _onUserAuthChanged(event, emit),
        logout: (event) => _onLogout(event, emit),
      );
    });

    _authRepository.userStream.listen(_onUserStreamDataChanged);
  }

  _onUserStreamDataChanged(UserModel? userModel) {
    add(AuthEvent.userAuthChanged(userModel: userModel));
  }

  _onUserAuthChanged(_UserAuthChanged event, Emitter<AuthState> emit) {
    final userModel = event.userModel;
    if (userModel == null) {
      emit(const AuthState.idle());
    } else {
      emit(AuthState.idle(userModel: userModel));
    }
  }

  _onLogout(_Logout event, Emitter<AuthState> emit) {
    _authRepository.logout();
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
  
}
