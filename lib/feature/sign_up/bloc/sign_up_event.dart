part of 'sign_up_bloc.dart';

/// Events for sign up
@freezed
class SignUpEvent with _$SignUpEvent {
  /// Sign up using email and password (default)
  const factory SignUpEvent.defaultSignUp({required DefaultAuthUserData data}) =
      _DefaultSignUp;
}
