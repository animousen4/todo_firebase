import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_firebase/feature/auth/data/converter/user_converter.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';

/// Auth data provider
abstract interface class AuthDataProvider {

  /// Stream which provides user statuses (authroized or not)
  Stream<UserModel?> get userStream;

  /// Getter of user status
  Future<UserModel?> getUser();

  /// Logging out method
  Future<void> logout();
}

/// Implementation of [AuthDataProvider]
/// Provides data, and in this case it's a bridge between Firebase and our app
class AuthDataProviderFirebase implements AuthDataProvider {
  final FirebaseAuth _firebaseAuth;

  final UserConverter _userConverter;

  /// Public constructor
  AuthDataProviderFirebase(
      {required FirebaseAuth firebaseAuth,
      required UserConverter userConverter,})
      : _firebaseAuth = firebaseAuth,
        _userConverter = userConverter;

  @override
  Stream<UserModel?> get userStream => _firebaseAuth
      .authStateChanges()
      .map((user) => user != null ? UserModel(email: user.email, uid: user.uid) : null);

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserModel?> getUser() async {
    final currentFirebaseUser = _firebaseAuth.currentUser;
    return currentFirebaseUser != null
        ? _userConverter.convert(currentFirebaseUser)
        : null;
  }
}
