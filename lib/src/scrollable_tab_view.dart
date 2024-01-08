import 'package:flutter/material.dart';

/// Wrap the children widgets in an AnimatedContainer to enable smooth transitions.
/// Show the selected child widget based on the selectedIndex.
class ScrollableTabView extends StatelessWidget {
  final List<Widget> children;
  final int selectedIndex;
  const ScrollableTabView({
    Key? key,
    required this.children,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:
          const Duration(milliseconds: 600), // Duration for the animation.
      width: double
          .infinity, // Set the width of the container to fill available space.
      child: children[selectedIndex],
    );
  }
}
