/// Model of internal user
class UserModel {
  /// User email
  final String? email;

  /// User unique id, which is a key for accessing databases
  /// We don't store it, it provided by Firebase
  final String uid;

  /// Public constructor
  UserModel({required this.email, required this.uid});
}
