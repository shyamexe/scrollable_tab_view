import 'package:flutter/material.dart';
import 'scrollable_tab_view.dart';

class ScrollableTabViewWithController extends StatefulWidget {
  final TabController controller;
  final List<Widget> children;
  const ScrollableTabViewWithController({
    Key? key,
    required this.controller,
    required this.children,
  }) : super(key: key);

  @override
  State<ScrollableTabViewWithController> createState() =>
      _ScrollableTabViewWithControllerState();
}

class _ScrollableTabViewWithControllerState
    extends State<ScrollableTabViewWithController> {
  // This variable holds the current index of the selected tab.
  int index = 0;
  @override
  void initState() {
    super.initState();
    // Add a listener to the controller to track changes in the selected tab index.
    widget.controller.addListener(() {
      index = widget.controller.index;
      // Update the state when the selected tab index changes.
      setState(() {});

      // Perform initialization tasks here.
    });
  }

  @override
  Widget build(BuildContext context) {
    // Create a ScrollableTabView widget and pass the selected index and child widgets.
    return ScrollableTabView(
      selectedIndex: index,
      children: widget.children,
    );
  }
}
