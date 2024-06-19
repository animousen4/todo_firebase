import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';

/// Sign in controller for user
abstract interface class SignInScopeController {
  /// Getter of the bloc state
  SignInState get state;

  /// Method for sign in
  void defaultSignIn(DefaultAuthUserData signInData);
}

/// Sign in scope, which provides controller with methods to interact with
class SignInScope extends StatefulWidget {

  /// Public constructor
  const SignInScope({super.key, required this.signInBloc, required this.child});

  /// Bloc, which controls state and receiving events
  final SignInBloc signInBloc;

  /// Child, which will get access to [_InheritSignInScope]
  final Widget child;

  @override
  State<SignInScope> createState() => _SignInScopeState();

  /// Getting controller from [_InheritSignInScope] in tree below
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
          controller: this, signInState: state, child: widget.child,),
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
