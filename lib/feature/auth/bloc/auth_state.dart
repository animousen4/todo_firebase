part of 'auth_bloc.dart';

/// Authentication state, which just provides user authentication status (authorized or not)
@freezed
class AuthState with _$AuthState {
  /// Default state, which provides user authentication status
  const factory AuthState.idle({UserModel? userModel}) = _Idle;
}
