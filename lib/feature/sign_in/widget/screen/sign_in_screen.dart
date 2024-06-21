import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/adaptive/adaptive_builder.dart';
import 'package:todo_firebase/feature/adaptive/aspect_ratio_adapter.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/overlay_loading/widget/overlay_loading.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';
import 'package:todo_firebase/feature/sign_in/widget/components/data_landscape_container.dart';
import 'package:todo_firebase/feature/sign_in/widget/sign_in_scope.dart';
import 'package:todo_firebase/feature/sign_in/widget/validation_text_field.dart';

part 'pages.dart';
part 'pages_components.dart';

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
    return _InheritSignInPageContainer(
      loginController: _loginController,
      loginError: _loginError,
      passwordController: _passwordController,
      passwordError: _passwordError,
      signInValid: _signInValid,
      signInScopeController: _signInScopeController,
      child: AdaptiveBuilder(
        children: [
          PortraitAdapter(
            builder: (context, constraints) => const _SignInPagePortrait(),
          ),
          LandscapeAdapter(
            builder: (context, constraints) => const _SignInPageLandscape(),
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

class _InheritSignInPageContainer extends InheritedWidget {
  final ValueNotifier<String?> loginError;
  final TextEditingController loginController;
  final ValueNotifier<String?> passwordError;
  final TextEditingController passwordController;
  final ValueNotifier<bool> signInValid;
  final SignInScopeController signInScopeController;

  const _InheritSignInPageContainer({
    required super.child,
    required this.loginError,
    required this.loginController,
    required this.passwordError,
    required this.passwordController,
    required this.signInValid,
    required this.signInScopeController,
  });

  static _InheritSignInPageContainer of(BuildContext context) =>
      context.inhOf<_InheritSignInPageContainer>(listen: false);

  @override
  bool updateShouldNotify(_InheritSignInPageContainer oldWidget) => false;
}
