part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle({UserModel? userModel}) = _Idle;
}
