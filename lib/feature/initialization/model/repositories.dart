import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';

class Repositories {
  final SignInRepository signInRepository;
  final SignUpRepository signUpRepository;
  
  Repositories({required this.signInRepository, required this.signUpRepository});
}