import 'package:flutter/widgets.dart';
import 'package:todo_firebase/feature/adaptive/aspect_ratio_adapter.dart';
import 'package:todo_firebase/feature/adaptive/effective_aspect_ratio_algorithm.dart';

/// Builder of widgets based on aspect ratio
/// If current aspect ratio less or equal of provided (the biggest),
/// [AdaptiveBuilder] will use this one
class AdaptiveBuilder extends StatefulWidget {
  /// Public constructor
  const AdaptiveBuilder({super.key, required this.children});

  /// Childs
  final List<AspectRatioAdapter> children;

  @override
  State<AdaptiveBuilder> createState() => _AdaptiveBuilderState();
}

class _AdaptiveBuilderState extends State<AdaptiveBuilder> {
  late final List<AspectRatioAdapter> _sortedChildren;

  late final EffectiveAspectRatioAlgorithm _algorithm;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final aspectRatio = constraints.maxWidth / constraints.maxHeight;

        return _algorithm
            .getNearestMinimalPositiveAdapter(_sortedChildren, aspectRatio)
            .builder(context, constraints);
      },
    );
  }

  @override
  void initState() {
    super.initState();

    /// Using binary search by default
    _algorithm = BinaryAspectRatioAlgorithm();

    /// Algorithm requires sorting, we will sort only once
    _sortedChildren = List.of(widget.children);

    _sortedChildren.sort((a, b) => a.aspectRatio.compareTo(b.aspectRatio));

    print(_sortedChildren);
  }
}
