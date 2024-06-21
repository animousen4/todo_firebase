part of 'sign_in_screen.dart';

class _SignInPagePortrait extends StatelessWidget {
  const _SignInPagePortrait();

  @override
  Widget build(BuildContext context) {
    _InheritSignInPageContainer container =
        _InheritSignInPageContainer.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValidationTextField(
              error: container.loginError,
              controller: container.loginController,
            ),
            const SizedBox(
              height: 15,
            ),
            ValidationTextField(
              error: container.passwordError,
              controller: container.passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const _SignInError(),
                _SignInButton(
                  signInValid: container.signInValid,
                  signInScopeController: container.signInScopeController,
                  loginController: container.loginController,
                  passwordController: container.passwordController,
                ),
              ],
            ),
            const _SignUpLinkText(),
          ],
        ),
      ),
    );
  }
}

class _SignInPageLandscape extends StatelessWidget {
  const _SignInPageLandscape();

  @override
  Widget build(BuildContext context) {
    final container = _InheritSignInPageContainer.of(context);
    return Scaffold(
      body: Center(
        child: DataLandscapeContainer(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 15,
                ),
                ValidationTextField(
                  error: container.loginError,
                  controller: container.loginController,
                ),
                const SizedBox(
                  height: 15,
                ),
                ValidationTextField(
                  error: container.passwordError,
                  controller: container.passwordController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const _SignInError(),
                    _SignInButton(
                      signInValid: container.signInValid,
                      signInScopeController: container.signInScopeController,
                      loginController: container.loginController,
                      passwordController: container.passwordController,
                    ),
                  ],
                ),
                const _SignUpLinkText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}