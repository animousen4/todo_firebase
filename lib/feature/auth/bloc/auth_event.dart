part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userAuthChanged({required UserModel? userModel}) = _UserAuthChanged;
  const factory AuthEvent.logout() = _Logout;
}