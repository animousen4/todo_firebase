import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_firebase/feature/sign_in/widget/components/data_landscape_container_theme_data.dart';

/// Container with own color and style, that holds widget
class DataLandscapeContainer extends StatelessWidget {
  /// Public constructor
  const DataLandscapeContainer({super.key, this.child, this.edgeInsets});

  /// Child widget
  final Widget? child;

  /// Padding
  final EdgeInsets? edgeInsets;
  @override
  Widget build(BuildContext context) {
    final theme = themeOf(context);
    final defaultTheme = defaultThemeOf(context);
    final effectiveTheme = _calculateEffectiveTheme(theme, defaultTheme);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: effectiveTheme.containerColor,
      ),
      child: Padding(
        padding: effectiveTheme.padding ?? const EdgeInsets.all(26.0),
        child: child,
      ),
    );
  }

  /// Getting theme from BuildContext, if exists
  DataLandscapeContainerThemeData? themeOf(BuildContext context) =>
      Theme.of(context).extension<DataLandscapeContainerThemeData>();

  /// Theme by default, if not provided
  DataLandscapeContainerThemeData defaultThemeOf(BuildContext context) {
    final contatinerColor = Theme.of(context).colorScheme.onSecondary;

    return DataLandscapeContainerThemeData(
      containerColor: contatinerColor,
      padding: const EdgeInsets.all(26.0),
    );
  }

  DataLandscapeContainerThemeData _calculateEffectiveTheme(
    DataLandscapeContainerThemeData? theme,
    DataLandscapeContainerThemeData defaultTheme,
  ) =>
      defaultTheme.merge(theme);
}
