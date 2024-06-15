import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';

abstract interface class SignInScopeController {
  SignInState get state;

  void defaultSignIn(DefaultAuthUserData signInData);
}

class SignInScope extends StatefulWidget {
  const SignInScope({super.key, required this.signInBloc, required this.child});

  final SignInBloc signInBloc;

  final Widget child;

  @override
  State<SignInScope> createState() => _SignInScopeState();

  static SignInScopeController of(BuildContext context) =>
      context.inhOf<_InheritSignInScope>().controller;
}

class _SignInScopeState extends State<SignInScope>
    implements SignInScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: widget.signInBloc,
      builder: (context, state) => _InheritSignInScope(
          controller: this, signInState: state, child: widget.child),
    );
  }

  @override
  void defaultSignIn(DefaultAuthUserData signInData) {
    widget.signInBloc.add(SignInEvent.defaultSignIn(signInData: signInData));
  }

  @override
  SignInState get state => widget.signInBloc.state;
}

class _InheritSignInScope extends InheritedWidget {
  final SignInScopeController controller;

  final SignInState signInState;

  const _InheritSignInScope({
    required super.child,
    required this.controller,
    required this.signInState,
  });

  @override
  bool updateShouldNotify(_InheritSignInScope oldWidget) {
    return signInState != oldWidget.signInState;
  }
}
