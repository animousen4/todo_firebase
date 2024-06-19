part of 'auth_bloc.dart';


/// Authentication events
@freezed
class AuthEvent with _$AuthEvent {
  /// Internal event for catching user statuses (authorized or not)
  const factory AuthEvent.userAuthChanged({required UserModel? userModel}) = _UserAuthChanged;

  /// Event for logging out from account
  const factory AuthEvent.logout() = _Logout;
}