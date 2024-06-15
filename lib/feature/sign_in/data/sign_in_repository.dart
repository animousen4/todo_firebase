import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/data/results.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_data_provider.dart';

abstract interface class SignInRepository {
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  );
}

class SignInRepositoryImpl implements SignInRepository {
  final SignInDataProvider _signInDataProvider;

  SignInRepositoryImpl({required SignInDataProvider signInDataProvider})
      : _signInDataProvider = signInDataProvider;

  @override
  Future<DefaultSignInResult> signInWithEmailAndPassword(
    DefaultAuthUserData data,
  ) {
    return _signInDataProvider.signInWithEmailAndPassword(data);
  }
}