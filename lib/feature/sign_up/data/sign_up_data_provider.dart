import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/sign_in/data/results.dart';
import 'package:todo_firebase/feature/sign_up/data/results.dart';

/// Data provider for sign up
abstract interface class SignUpDataProvider {

  /// Default sign up using email and passwords
  Future<DefaultSignUpResult> defaultSignUp(DefaultAuthUserData data);
}

/// Firebase implementation of [SignUpDataProvider]
class SignUpDataProviderImpl implements SignUpDataProvider {
  final FirebaseAuth _firebaseAuth;

  /// Public constructor
  SignUpDataProviderImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<DefaultSignUpResult> defaultSignUp(DefaultAuthUserData data) async {
    try {
      final response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: data.email, password: data.password,);
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
