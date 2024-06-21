// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

/// Builder with constraints
typedef LayoutBuilderFunc = Widget Function(
  BuildContext context,
  BoxConstraints constraints,
);

/// Adapter, which provides aspect ratio for builder
/// and contains a builder
abstract class AspectRatioAdapter {
  /// Builder
  final LayoutBuilderFunc builder;

  /// Aspsect ratio, value = x/y
  double get aspectRatio;

  /// Public constructor
  const AspectRatioAdapter({required this.builder});

  @override
  String toString() =>
      'AspectRatioBuilderAdapter(builder: $builder, aspectRation: $aspectRatio)';
}

/// Landscape adapter
class LandscapeAdapter extends AspectRatioAdapter {
  /// Public constructor with builder
  const LandscapeAdapter({required super.builder});

  @override
  double get aspectRatio => 3 / 2;
}

/// Portrait adapter
class PortraitAdapter extends AspectRatioAdapter {
  /// Public constructor with builder
  const PortraitAdapter({required super.builder});

  @override
  double get aspectRatio => 2 / 3;
}
