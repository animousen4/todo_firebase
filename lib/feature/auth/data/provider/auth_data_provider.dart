import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_firebase/feature/auth/data/converter/user_converter.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/data/results.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';

abstract interface class AuthDataProvider {
  Stream<UserModel?> get userStream;

  Future<UserModel?> getUser();

  Future<void> logout();
}

class AuthDataProviderFirebase implements AuthDataProvider {
  final FirebaseAuth _firebaseAuth;

  final UserConverter _userConverter;

  AuthDataProviderFirebase(
      {required FirebaseAuth firebaseAuth,
      required UserConverter userConverter})
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
