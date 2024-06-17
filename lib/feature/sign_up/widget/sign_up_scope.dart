import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_up/bloc/sign_up_bloc.dart';

abstract interface class SignUpScopeController {
  void defaultSignUp(DefaultAuthUserData data);

  SignUpState get state;
}

class SignUpScope extends StatefulWidget {
  const SignUpScope({super.key, required this.signUpBloc, required this.child});

  final SignUpBloc signUpBloc;

  final Widget child;

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
