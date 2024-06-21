part of 'sign_in_screen.dart';

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
              ..onTap = () => context.pushRoute(const SignUpRoute()),
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
