import 'package:flutter/material.dart';

/// Declarative loading widget
/// Looks like dialog, and provides a declarative way of control
class OverlayLoading extends StatefulWidget {
  /// Public constructor
  const OverlayLoading(
      {required this.isLoading,
      required this.child,
      required this.loadingWidget,
      super.key,});

  /// Loading status, provided upper
  final bool isLoading;

  /// Child
  final Widget child;

  /// Loading widget (like CircularProgressIndicator, etc ...)
  final Widget loadingWidget;

  @override
  State<OverlayLoading> createState() => _OverlayLoadingState();
}

class _OverlayLoadingState extends State<OverlayLoading>
    with SingleTickerProviderStateMixin {
  late bool isLoading;

  late final AnimationController animationController;

  late final Animation<double> backgroundAnimation;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: FadeTransition(
          opacity: backgroundAnimation,
          child: Container(color: Colors.grey, child: widget.child),
        ),),
        if (isLoading) ...[
          const Positioned.fill(child: ModalBarrier()),
          Positioned.fill(
            child: Center(child: widget.loadingWidget),
          ),
        ],
      ],
    );
  }

  @override
  void initState() {
    isLoading = widget.isLoading;
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 300),
        value: widget.isLoading ? 1.0 : 0.0,);

    backgroundAnimation = Tween(begin: 1.0, end: 0.7).animate(CurvedAnimation(
        parent: animationController, curve: const Interval(0.0, 1.0),),);

    super.initState();
  }

  @override
  void didUpdateWidget(OverlayLoading oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isLoading == widget.isLoading) {
      return;
    }

    isLoading = widget.isLoading;

    if (isLoading) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }
}
