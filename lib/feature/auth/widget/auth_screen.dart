import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _SignInView(
        loginController: _loginController,
        passwordController: _passwordController);
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView({
    super.key,
    required TextEditingController loginController,
    required TextEditingController passwordController,
  })  : _loginController = loginController,
        _passwordController = passwordController;

  final TextEditingController _loginController;
  final TextEditingController _passwordController;

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
              TextField(
                controller: _loginController,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _passwordController,
                maxLength: 32,
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        required maxLength}) =>
                    Text("$currentLength/$maxLength"),
                decoration: InputDecoration(error: Text("1")),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(onPressed: () {}, child: Text("Sign In")))
            ],
          ),
        ));
  }
}
