part of 'sign_in_bloc.dart';

/// Events for sign in
@freezed
class SignInEvent with _$SignInEvent {
  /// Default sign in, using login and password
  const factory SignInEvent.defaultSignIn(
      {required DefaultAuthUserData signInData,}) = _DefaultSignIn;
}
