import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';
import 'package:todo_firebase/feature/todo/data/todo_repository.dart';

/// Dependency container with all repositories, used in app
/// Here we are providing implementations of interfaces, and 
/// connection between modules is achieved by interfaces,
/// not implementations
class Repositories {
  /// [SignInRepository] instance
  final SignInRepository signInRepository;

  /// [SignUpRepository] instance
  final SignUpRepository signUpRepository;

  /// [TodoRepository] instance
  final TodoRepository todoRepository;

  /// Public constructor for injection
  Repositories({required this.signInRepository, required this.signUpRepository, required this.todoRepository});
}