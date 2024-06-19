import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/data/results.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_data_provider.dart';

/// RSign in repository
abstract interface class SignInRepository {
  /// Sign in with email and password
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  );
}

/// Base implementation of [SignInRepository]
class SignInRepositoryImpl implements SignInRepository {
  final SignInDataProvider _signInDataProvider;

  /// Public constructor
  SignInRepositoryImpl({required SignInDataProvider signInDataProvider})
      : _signInDataProvider = signInDataProvider;

  @override
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  ) {
    return _signInDataProvider.signInWithEmailAndPassword(data);
  }
}
