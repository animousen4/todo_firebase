import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/feature/sign_up/bloc/sign_up_bloc.dart';

abstract interface class SignUpScopeController {}

class SignUpScope extends StatefulWidget {
  const SignUpScope({super.key, required this.signUpBloc, required this.child});

  final SignUpBloc signUpBloc;

  final Widget child;

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
