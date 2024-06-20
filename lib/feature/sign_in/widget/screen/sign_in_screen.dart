import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/overlay_loading/widget/overlay_loading.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';
import 'package:todo_firebase/feature/sign_in/widget/sign_in_scope.dart';
import 'package:todo_firebase/feature/sign_in/widget/validation_text_field.dart';

/// Screen for user to sign in
@RoutePage()
class SignInScreen extends StatefulWidget {
  /// Public constructor
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final SignInBloc signInBloc;
  @override
  Widget build(BuildContext context) {
    return SignInScope(signInBloc: signInBloc, child: const _SignInLoader());
  }

  @override
  void initState() {
    super.initState();

    signInBloc = SignInBloc(
      signInRepository:
          DependenciesScope.of(context).repositories.signInRepository,
      initState: const SignInState.idle(),
    );
  }

  /// Closing bloc when we dont need it
  @override
  void dispose() {
    signInBloc.close();
    super.dispose();
  }
}

class _SignInLoader extends StatelessWidget {
  const _SignInLoader();

  @override
  Widget build(BuildContext context) {
    final isLoading = SignInScope.of(context).state.isLoading;

    return OverlayLoading(
      isLoading: isLoading,
      loadingWidget: const Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator(),
        ),
      ),
      child: const _SignInView(),
    );
  }
}

class _SignInView extends StatefulWidget {
  const _SignInView();

  @override
  State<_SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<_SignInView> {
  /// Controllers for login and password
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  /// Controller of the [SignInScope]
  late SignInScopeController _signInScopeController;

  /// One common observer, which includes all controllers
  late final Listenable _observer;

  /// Validations for login and password
  late final ValueNotifier<String?> _loginError = ValueNotifier(null);
  late final ValueNotifier<String?> _passwordError = ValueNotifier(null);

  /// Notification about validation status
  late final ValueNotifier<bool> _signInValid = ValueNotifier(false);

  /// Validations, which will be called each time user interacts with [TextField]s
  late final List<String? Function(DefaultAuthUserData data)> _validations;

  /// List of controllers to merge to `_observer`
  late final List<TextEditingController> _controllers;

  /// List of validation errors
  late final List<ValueNotifier<String?>> _errors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValidationTextField(
                    error: _loginError,
                    controller: _loginController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ValidationTextField(
                    error: _passwordError,
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                  const _SignUpLinkText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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

  /// Disposing controllers
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

class _SignUpLinkText extends StatelessWidget {
  const _SignUpLinkText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Not registered yet? ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextSpan(
            text: "Sign up",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => context.pushRoute(const SignUpRoute()),
          ),
        ],
      ),
    );
  }
}

class _SignInError extends StatelessWidget {
  const _SignInError();

  @override
  Widget build(BuildContext context) {
    final state = SignInScope.of(context).state;
    final error = state.validationError;
    return error == null ? const SizedBox() : Text(error.message);
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
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
