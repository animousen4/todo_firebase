import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/overlay_loading/widget/overlay_loading.dart';
import 'package:todo_firebase/feature/sign_in/widget/validation_text_field.dart';
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
      child: const _SignUpLoader(),
    );
  }

  @override
  void initState() {
    super.initState();

    final signUpRepository =
        DependenciesScope.of(context).repositories.signUpRepository;

    _signUpBloc = SignUpBloc(
      signUpRepository: signUpRepository,
      initialState: const SignUpState.idle(),
    );
  }
}

class _SignUpLoader extends StatelessWidget {
  const _SignUpLoader();

  @override
  Widget build(BuildContext context) {
    final isLoading = SignUpScope.of(context).state.inProgress;
    return OverlayLoading(
        isLoading: isLoading,
        loadingWidget: const Card(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator(),
        ),),
        child: const _SignUpScreenView(),);
  }
}

class _SignUpScreenView extends StatefulWidget {
  const _SignUpScreenView();

  @override
  State<_SignUpScreenView> createState() => _SignUpScreenViewState();
}

class _SignUpScreenViewState extends State<_SignUpScreenView> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late final Listenable _observer;

  late final ValueNotifier<String?> _loginError = ValueNotifier(null);
  late final ValueNotifier<String?> _passwordError = ValueNotifier(null);

  late final ValueNotifier<bool> _signUpValid = ValueNotifier(false);

  late final List<String? Function(DefaultAuthUserData data)> _validations;

  late final List<TextEditingController> _controllers;
  late final List<ValueNotifier<String?>> _errors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign up"),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: _ErrorAreaWidget(),
                    ),
                    _SignUpButton(
                      signUpValid: _signUpValid,
                      loginController: _loginController,
                      passwordController: _passwordController,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),);
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

    _signUpValid.value = _validate(data);
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

class _ErrorAreaWidget extends StatelessWidget {
  const _ErrorAreaWidget();

  @override
  Widget build(BuildContext context) {
    final stateError = SignUpScope.of(context).state.error;
    return AnimatedOpacity(
      opacity: stateError == null ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: Text(stateError?.message ?? ""),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    required ValueNotifier<bool> signUpValid,
    required TextEditingController loginController,
    required TextEditingController passwordController,
  })  : _signUpValid = signUpValid,
        _loginController = loginController,
        _passwordController = passwordController;

  final ValueNotifier<bool> _signUpValid;
  final TextEditingController _loginController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final signUpScopeController = SignUpScope.of(context);
    return ListenableBuilder(
      listenable: _signUpValid,
      builder: (context, child) {
        return ConstrainedBox(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: FilledButton(
            onPressed:
                _signUpValid.value && !signUpScopeController.state.inProgress
                    ? () {
                        signUpScopeController.defaultSignUp(
                          DefaultAuthUserData(
                            email: _loginController.text,
                            password: _passwordController.text,
                          ),
                        );
                      }
                    : null,
            child: child,
          ),
        );
      },
      child: const Text("Sign Up"),
    );
  }
}
