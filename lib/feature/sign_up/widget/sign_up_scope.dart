import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_up/bloc/sign_up_bloc.dart';

/// Controller for sign up
/// Provides to user methods for sign up
abstract interface class SignUpScopeController {
  /// Sign up using login and password
  void defaultSignUp(DefaultAuthUserData data);

  /// State of the bloc
  SignUpState get state;
}

/// Scope of sign up with controller and state, which will
/// be provided for the child and the children below tree
/// via [InheritedWidget]
class SignUpScope extends StatefulWidget {
  /// Public constructor
  const SignUpScope({super.key, required this.signUpBloc, required this.child});

  /// Bloc, which manages states and events
  final SignUpBloc signUpBloc;

  /// Child
  final Widget child;

  /// [SignUpScopeController], which will be provided through context
  /// using [_InheritSignUpScope]
  static SignUpScopeController of(BuildContext context) => context.inhOf<_InheritSignUpScope>().controller;
  @override
  State<SignUpScope> createState() => _SignUpScopeState();
}

class _SignUpScopeState extends State<SignUpScope>
    implements SignUpScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      bloc: widget.signUpBloc,
      builder: (context, state) => _InheritSignUpScope(
        signUpState: state,
        controller: this,
        child: widget.child,
      ),
    );
  }
  
  @override
  void defaultSignUp(DefaultAuthUserData data) {
    widget.signUpBloc.add(SignUpEvent.defaultSignUp(data: data));
  }
  
  @override
  SignUpState get state => widget.signUpBloc.state;
}

class _InheritSignUpScope extends InheritedWidget {
  final SignUpScopeController controller;

  final SignUpState signUpState;

  const _InheritSignUpScope({
    required super.child,
    required this.controller,
    required this.signUpState,
  });

  @override
  bool updateShouldNotify(_InheritSignUpScope oldWidget) {
    return signUpState != oldWidget.signUpState;
  }
}
