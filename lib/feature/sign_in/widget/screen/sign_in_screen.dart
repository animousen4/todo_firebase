import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_data_provider.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';
import 'package:todo_firebase/feature/sign_in/widget/sign_in_scope.dart';
import 'package:todo_firebase/feature/sign_in/widget/validation_text_field.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final SignInBloc signInBloc;
  @override
  Widget build(BuildContext context) {
    return SignInScope(signInBloc: signInBloc, child: const _SignInView());
  }

  @override
  void initState() {
    super.initState();

    signInBloc = SignInBloc(
      signInRepository:
          DependenciesScope.of(context).repositories.signInRepository,
      initState: SignInState.idle(),
    );
  }
}

class _SignInView extends StatefulWidget {
  const _SignInView({
    super.key,
  });

  @override
  State<_SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<_SignInView> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late SignInScopeController _signInScopeController;

  late final Listenable _observer;

  late final ValueNotifier<String?> _loginError = ValueNotifier(null);
  late final ValueNotifier<String?> _passwordError = ValueNotifier(null);

  late final ValueNotifier<bool> _signInValid = ValueNotifier(false);

  late final List<String? Function(DefaultAuthUserData data)> _validations;

  late final List<TextEditingController> _controllers;
  late final List<ValueNotifier<String?>> _errors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Log in "),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValidationTextField(
                  error: _loginError, controller: _loginController),
              const SizedBox(
                height: 15,
              ),
              ValidationTextField(
                  error: _passwordError, controller: _passwordController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const _SignInError(),
                  _SignInButton(
                    signInValid: _signInValid,
                    signInScopeController: _signInScopeController,
                    loginController: _loginController,
                    passwordController: _passwordController,
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  @override
  void initState() {
    super.initState();

    _controllers = [
      _loginController,
      _passwordController,
    ];

    _errors = [
      _loginError,
      _passwordError,
    ];

    _validations = [
      (data) =>
          _loginError.value = data.email.isEmpty ? "Should be not empty" : null,
      (data) => _passwordError.value =
          data.password.isEmpty ? "Should be not empty" : null,
    ];

    _observer = Listenable.merge(_controllers);

    _observer.addListener(_onInputDataChanged);
  }

  void _onInputDataChanged() {
    final data = DefaultAuthUserData(
      email: _loginController.text,
      password: _passwordController.text,
    );

    _signInValid.value = _validate(data);
  }

  bool _validate(DefaultAuthUserData data) {
    for (final validation in _validations) {
      final result = validation(data);

      if (result != null) {
        return false;
      }
    }

    return true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _signInScopeController = SignInScope.of(context);
  }

  @override
  void dispose() {
    _observer.removeListener(_onInputDataChanged);

    for (final error in _errors) {
      error.dispose();
    }
    for (final controller in _controllers) {
      controller.dispose();
    }

    super.dispose();
  }
}

class _SignInError extends StatelessWidget {
  const _SignInError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = SignInScope.of(context).state;
    final error = state.validationError;
    return error == null ? const SizedBox() : Text(error.message);
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    super.key,
    required ValueNotifier<bool> signInValid,
    required SignInScopeController signInScopeController,
    required TextEditingController loginController,
    required TextEditingController passwordController,
  })  : _signInValid = signInValid,
        _signInScopeController = signInScopeController,
        _loginController = loginController,
        _passwordController = passwordController;

  final ValueNotifier<bool> _signInValid;
  final SignInScopeController _signInScopeController;
  final TextEditingController _loginController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _signInValid,
      builder: (context, child) {
        return FilledButton(
          onPressed: _signInValid.value
              ? () {
                  _signInScopeController.defaultSignIn(
                    DefaultAuthUserData(
                      email: _loginController.text,
                      password: _passwordController.text,
                    ),
                  );
                }
              : null,
          child: child,
        );
      },
      child: const Text("Sign In"),
    );
  }
}
