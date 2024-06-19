import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FailApp extends StatelessWidget {
  const FailApp({super.key, this.reason});

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
  const _WarnIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.warning_rounded,
      size: 80,
    );
  }
}

class _AppFailedTitle extends StatelessWidget {
  const _AppFailedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final failTitleStyle = Theme.of(context).textTheme.headlineMedium;
    return Text("App initialization failed", style: failTitleStyle);
  }
}

class _ReasonText extends StatelessWidget {
  const _ReasonText({super.key, this.reason});

  final Object? reason;

  @override
  Widget build(BuildContext context) {
    return Text("Reason: $reason");
  }
}
