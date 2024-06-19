import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/data/results.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';

/// Data provider for signing in
abstract interface class SignInDataProvider {

  /// Sign in with email and password
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  );
}
/// Firebase implementation of [SignInDataProvider]
class SignInDataProviderImpl implements SignInDataProvider {
  final FirebaseAuth _firebaseAuth;

  /// Public constructor
  SignInDataProviderImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  ) async {
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      if (response.credential != null) {
        return DefaultSignInResult.success(entity: UserCredentialModel());
      } else {
        throw Exception("User credentials are null");
      }
    } on FirebaseAuthException catch (error) {
      return DefaultSignInResult.failed(
        error: ServerError(message: error.code),
      );
    }
  }
}
