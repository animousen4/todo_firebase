import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/sign_up/bloc/sign_up_bloc.dart';
import 'package:todo_firebase/feature/sign_up/widget/sign_up_scope.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final SignUpBloc _signUpBloc;

  @override
  Widget build(BuildContext context) {
    return SignUpScope(
      signUpBloc: _signUpBloc,
      child: const SignUpScreenView(),
    );
  }

  @override
  void initState() {
    super.initState();

    final signUpRepository = DependenciesScope.of(context).repositories.signUpRepository;

    _signUpBloc = SignUpBloc(signUpRepository: signUpRepository, initialState: const SignUpState.idle());
  }
}

class SignUpScreenView extends StatefulWidget {
  const SignUpScreenView({super.key});

  @override
  State<SignUpScreenView> createState() => _SignUpScreenViewState();
}

class _SignUpScreenViewState extends State<SignUpScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
