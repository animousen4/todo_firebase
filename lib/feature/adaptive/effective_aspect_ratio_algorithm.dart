import 'package:todo_firebase/feature/adaptive/aspect_ratio_adapter.dart';

/// Algorithm interface for specifying effective builder by
/// provided aspect ratio.
abstract interface class EffectiveAspectRatioAlgorithm {
  /// Method, which requires sorted list of children
  /// to find efficiently required value
  AspectRatioAdapter getNearestMinimalPositiveAdapter(
    List<AspectRatioAdapter> sortedChildren,
    double targetAspectRatio,
  );
}

/// Algorithm, which searches effective builder for O(log n)
class BinaryAspectRatioAlgorithm implements EffectiveAspectRatioAlgorithm {
  @override
  AspectRatioAdapter getNearestMinimalPositiveAdapter(
    List<AspectRatioAdapter> sortedChildren,
    double targetAspectRatio,
  ) {
    int left = 0;
    int right = sortedChildren.length;

    while (left < right) {
      int mid = left + ((right - left) ~/ 2);
      if (sortedChildren[mid].aspectRatio <= targetAspectRatio) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }

    if (left >= sortedChildren.length) {
      return sortedChildren.last;
    }

    return sortedChildren[left];
  }
}
