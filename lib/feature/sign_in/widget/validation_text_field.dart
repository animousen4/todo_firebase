import 'package:flutter/material.dart';

/// Widget, which renders error (if present, through [ValueNotifier])
/// and working using [TextEditingController], notifies upper widgets about changes
class ValidationTextField extends StatelessWidget {
  /// Public constructor
  const ValidationTextField({
    required ValueNotifier<String?> error,
    required TextEditingController controller,
    this.decorationLabel,
    bool obscureText = false,
    super.key,
  })  : _error = error,
        _controller = controller,
        _obscureText = obscureText;

  final ValueNotifier<String?> _error;
  final TextEditingController _controller;
  final bool _obscureText;

  /// Decoration label of [TextField] in [InputDecoration]
  /// Could be optionally provided
  final Widget? decorationLabel;
  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: _error,
    builder: (context, child) => TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        label: child,
        errorText: _error.value,
        //helperText: "",
      ),
      controller: _controller,
    ),
    child: decorationLabel,
  );
}
