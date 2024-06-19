import 'package:flutter/material.dart';

/// Failed app, which appears when something going wrong on initialization
class FailApp extends StatelessWidget {
  /// Public constructor
  const FailApp({super.key, this.reason});

  /// Reason of failing app
  final Object? reason;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const _WarnIcon(),
              const SizedBox(
                height: 10,
              ),
              const _AppFailedTitle(),
              const SizedBox(
                height: 10,
              ),
              _ReasonText(
                reason: reason,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WarnIcon extends StatelessWidget {
  const _WarnIcon();

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.warning_rounded,
      size: 80,
    );
  }
}

class _AppFailedTitle extends StatelessWidget {
  const _AppFailedTitle();

  @override
  Widget build(BuildContext context) {
    final failTitleStyle = Theme.of(context).textTheme.headlineMedium;
    return Text("App initialization failed", style: failTitleStyle);
  }
}

class _ReasonText extends StatelessWidget {
  const _ReasonText({this.reason});

  final Object? reason;

  @override
  Widget build(BuildContext context) {
    return Text("Reason: $reason");
  }
}
