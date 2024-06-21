import 'package:flutter/material.dart';

/// ThemeData of [DataLandscapeContainer]
class DataLandscapeContainerThemeData
    extends ThemeExtension<DataLandscapeContainerThemeData> {
  /// Color of the container
  final Color? containerColor;

  /// Padding of inner content
  final EdgeInsets? padding;

  /// Public constructor
  const DataLandscapeContainerThemeData({this.containerColor, this.padding});

  @override
  ThemeExtension<DataLandscapeContainerThemeData> copyWith({
    Color? containerColor,
  }) {
    return DataLandscapeContainerThemeData(
      containerColor: containerColor ?? this.containerColor,
    );
  }

  @override
  ThemeExtension<DataLandscapeContainerThemeData> lerp(
    DataLandscapeContainerThemeData? other,
    double t,
  ) {
    return DataLandscapeContainerThemeData(
      containerColor: Color.lerp(containerColor, other?.containerColor, t),
      padding: EdgeInsets.lerp(padding, other?.padding, t),
    );
  }

  /// Merging an existing theme with provided one
  /// If the property is provided, it will be merged
  DataLandscapeContainerThemeData merge(
    DataLandscapeContainerThemeData? other,
  ) {
    return DataLandscapeContainerThemeData(
      containerColor: other?.containerColor ?? containerColor,
      padding: other?.padding ?? padding,
    );
  }
}
