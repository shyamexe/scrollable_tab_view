import 'package:flutter/material.dart';

/// Wrap the children widgets in an [AnimatedContainer] to enable smooth transitions.
/// This widget displays the currently selected child based on the [selectedIndex].
///
/// The [ScrollableTabView] widget provides a way to animate between different
/// child widgets, making the transition smooth and visually appealing when the
/// selected index changes.
///
/// Example usage:
/// ```dart
/// ScrollableTabView(
///   selectedIndex: _currentIndex,
///   children: [
///     Center(child: Text('Content for Tab 1')),
///     Center(child: Text('Content for Tab 2')),
///     Center(child: Text('Content for Tab 3')),
///   ],
/// )
/// ```
///
/// In the above example, the widget will animate between the content widgets based on
/// the value of [selectedIndex], showing the widget at the current index with a smooth transition.
class ScrollableTabView extends StatelessWidget {
  /// The list of widgets to display as the content for each tab.
  ///
  /// Each widget in this list represents the content that will be displayed
  /// when its corresponding index is selected. The order of the widgets in this
  /// list should match the order of the tabs or selection indices.
  final List<Widget> children;

  /// The index of the currently selected child widget.
  ///
  /// This integer value determines which widget in the [children] list is visible.
  /// The widget at the position indicated by [selectedIndex] will be displayed
  /// with a smooth transition. Ensure that [selectedIndex] is within the bounds
  /// of the [children] list to avoid index errors.
  final int selectedIndex;

  const ScrollableTabView({
    Key? key,
    required this.children,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      /// Duration for the animation.
      duration: const Duration(milliseconds: 600),

      /// Set the width of the container to fill available space.
      width: double.infinity,

      /// Use the selectedIndex to determine which child to show.
      child: children[selectedIndex],
    );
  }
}
