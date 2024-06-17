part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();
  bool get inProgress => maybeMap(progress: (_) => true, orElse: () => false);

  const factory SignUpState.idle({ServerError? error}) = _Idle;
  const factory SignUpState.progress({ServerError? error}) = _Progress;
  const factory SignUpState.failed({ServerError? error}) = _Failed;
  const factory SignUpState.error({ServerError? error}) = _Error;
  const factory SignUpState.success({ServerError? error}) = _Success;
}
