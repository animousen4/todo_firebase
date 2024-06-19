part of 'sign_up_bloc.dart';

/// State, which provides data about process of user sign up
/// Here we are using the same [ServerError] in different states, because the 
/// fact of error stays, between the transitions of states
@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  /// Getter for define, whether we are in progress (processing sign up) or no
  bool get inProgress => maybeMap(progress: (_) => true, orElse: () => false);

  /// Idle state, nothing happening
  const factory SignUpState.idle({ServerError? error}) = _Idle;

  /// Progress state, we are processing sign up
  const factory SignUpState.progress({ServerError? error}) = _Progress;

  /// Error state
  const factory SignUpState.error({ServerError? error}) = _Error;

  /// Success state, everything is fine
  const factory SignUpState.success({ServerError? error}) = _Success;
}
