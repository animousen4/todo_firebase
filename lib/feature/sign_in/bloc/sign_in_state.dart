part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.idle({required ServerError validationError}) =
      _Idle;
  const factory SignInState.processing({required ServerError validationError}) =
      _Processing;
  const factory SignInState.failed({required ServerError validationError}) =
      _Failed;
}
