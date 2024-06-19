import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimatedSync extends StatefulWidget {
  const AnimatedSync({super.key, required this.isSyncing});

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

  void _appearStatusListener(AnimationStatus status) {
    if (widget.isSyncing) {
      _rotateController.repeat();
    } else {
      _rotateController.stop();
    }
  }

  @override
  void dispose() {
    _appearController.removeStatusListener(_appearStatusListener);
    _appearController.dispose();
    _rotateController.dispose();
    super.dispose();
  }
}
