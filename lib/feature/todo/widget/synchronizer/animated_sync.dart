import 'package:flutter/material.dart';

/// Widget, which indicates the process of sync
/// Has animations with appearing and rotating
/// sync icon
class AnimatedSync extends StatefulWidget {
  /// Public constructor
  const AnimatedSync({super.key, required this.isSyncing});

  /// Is in sync
  final bool isSyncing;
  @override
  State<AnimatedSync> createState() => _AnimatedSyncState();
}

class _AnimatedSyncState extends State<AnimatedSync>
    with TickerProviderStateMixin {
  late final AnimationController _appearController;

  late final AnimationController _rotateController;
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _appearController,
      child: RotationTransition(
        turns: _rotateController,
        child: const Icon(Icons.sync_outlined),
      ),
    );
  }

  /// Here we check old widget
  /// If it was updated upper, we need to show it or hide
  @override
  void didUpdateWidget(AnimatedSync oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isSyncing != oldWidget.isSyncing) {
      if (widget.isSyncing) {
        _appearController.forward();
      } else {
        _appearController.reverse();
      }
    }
  }


  /// Rotation depends on the state of appear controller
  /// Adding listeners
  @override
  void initState() {
    super.initState();

    _appearController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _rotateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _appearController.addStatusListener(_appearStatusListener);
  }

  /// If it's hidden, we don't need to make `_appearController`
  /// and connected animations work
  void _appearStatusListener(AnimationStatus status) {
    if (widget.isSyncing) {
      _rotateController.repeat();
    } else {
      _rotateController.stop();
    }
  }

  /// Disposing created controllers
  @override
  void dispose() {
    _appearController.removeStatusListener(_appearStatusListener);
    _appearController.dispose();
    _rotateController.dispose();
    super.dispose();
  }
}
