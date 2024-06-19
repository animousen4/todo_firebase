part of 'sign_in_bloc.dart';

/// Sign in state
@freezed
class SignInState with _$SignInState {
  const SignInState._();

  /// Getter, which indicates loading state
  bool get isLoading => maybeMap(processing: (_) => true, orElse: () => false);

  /// Idle, nothing is going on
  const factory SignInState.idle({ServerError? validationError}) = _Idle;

  /// Success, we have processed signing in successfully
  const factory SignInState.success({ServerError? validationError}) = _Success;

  /// Processing, we are working on processing data and requests
  const factory SignInState.processing({ServerError? validationError}) =
      _Processing;
  
  /// Failed, something went wrong during processing
  const factory SignInState.failed({ServerError? validationError}) = _Failed;
}
