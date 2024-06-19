import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
/// Home screen of authorized user
/// Forwards view for [AutoRouter]
class HomeScreen extends StatelessWidget {

  /// Public constructor
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
