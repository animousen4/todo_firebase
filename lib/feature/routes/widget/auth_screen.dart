import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
/// Screen, where we provide authentication methods
class AuthScreen extends StatelessWidget {

  /// Public constructor
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
