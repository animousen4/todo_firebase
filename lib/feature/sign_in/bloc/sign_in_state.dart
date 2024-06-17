part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  bool get isLoading => maybeMap(processing: (_) => true, orElse: () => false);
  const factory SignInState.idle({ServerError? validationError}) = _Idle;
  const factory SignInState.processing({ServerError? validationError}) =
      _Processing;
  const factory SignInState.failed({ServerError? validationError}) = _Failed;
}
