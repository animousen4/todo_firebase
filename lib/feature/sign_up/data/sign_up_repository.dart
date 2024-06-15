import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_up/data/results.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_data_provider.dart';

abstract interface class SignUpRepository {
  Future<DefaultSignUpResult> defaultSignUp(DefaultAuthUserData data);
}

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDataProvider _signUpDataProvider;

  SignUpRepositoryImpl({required SignUpDataProvider signUpDataProvider})
      : _signUpDataProvider = signUpDataProvider;

  @override
  Future<DefaultSignUpResult> defaultSignUp(DefaultAuthUserData data) async {
    return _signUpDataProvider.defaultSignUp(data);
  }
}
