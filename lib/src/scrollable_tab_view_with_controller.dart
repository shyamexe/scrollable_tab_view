import 'package:flutter/material.dart';
import 'scrollable_tab_view.dart';

/// Create a [ScrollableTabViewWithController] widget to display tab content with a
/// [TabController]. This widget provides a view where the content for each tab can
/// be managed and displayed based on the selected tab index.
///
/// Example usage:
/// ```dart
/// ScrollableTabViewWithController(
///   controller: _tabController,
///   children: [
///     Center(child: Text('Content for Tab 1')),
///     Center(child: Text('Content for Tab 2')),
///     Center(child: Text('Content for Tab 3')),
///   ],
/// )
/// ```
///
/// The [ScrollableTabViewWithController] will update its displayed content based on
/// the currently selected tab controlled by the provided [TabController].
class ScrollableTabViewWithController extends StatefulWidget {
  /// The [TabController] used to control tab selection and synchronization.
  ///
  /// This [TabController] manages which tab is currently selected and handles
  /// animations between tab changes. It is necessary for coordinating the
  /// content display with the selected tab index.
  final TabController controller;

  /// The list of widgets to display as the content for each tab.
  ///
  /// Each widget in this list represents the content that will be displayed
  /// when the corresponding tab is selected. The order of the widgets must
  /// match the order of the tabs managed by the [TabController].
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
  /// This variable holds the current index of the selected tab.
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
    return ScrollableTabView(
      selectedIndex: index,
      children: widget.children,
    );
  }
}
