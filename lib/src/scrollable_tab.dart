import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:scrollable_tab_view/src/scrollable_tab_view.dart';

class ScrollableTab extends StatefulWidget {
  final int initialIndex;
  final Duration? animationDuration;
  final bool isScrollable;
  final List<Widget> tabs;
  final void Function(int)? onTap;
  final double? centerGap;
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final bool? automaticIndicatorColorAdjustment;
  final double? indicatorWeight;
  final EdgeInsetsGeometry? indicatorPadding;
  final Decoration? indicator;
  final TabBarIndicatorSize? indicatorSize;
  final Color? dividerColor;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;
  final DragStartBehavior? dragStartBehavior;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
 const ScrollableTab({
    Key? key,
    this.initialIndex = 0,
    this.animationDuration,
    this.isScrollable = false,
    required this.tabs,
    this.onTap,
    this.centerGap = 0,
    required this.children,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.mouseCursor,
    this.enableFeedback,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
  }) : super(key: key);

  @override
  State<ScrollableTab> createState() => _ScrollableTabState();
}

class _ScrollableTabState extends State<ScrollableTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Set up the DefaultTabController to handle tab navigation.
    return DefaultTabController(
      length: widget.tabs.length,// Set the number of tabs based on the provided list.
      animationDuration: widget.animationDuration,// Duration for tab transition animation.
      initialIndex: widget.initialIndex,// Set the initial selected tab index.
      child: SizedBox(
        width: double.infinity,// Set the width of the container to fill available space.
        child: Column(
          children: [
            TabBar(
              tabs: widget.tabs,// Provide the list of widgets as tabs.
              isScrollable: widget.isScrollable,// Allow scrolling if isScrollable is true.
              
              onTap: (value) {
                widget.onTap?.call(value);// Call the provided Function(int)? onTap function.
                selectedIndex = value;// Update the selectedIndex with the tapped tab index.
                setState(() {});// Trigger a rebuild to reflect the new selectedIndex.
              },
              automaticIndicatorColorAdjustment:
                  widget.automaticIndicatorColorAdjustment ?? true,// Adjust indicator color automatically.
              dividerColor: widget.dividerColor,// Color of dividers between tabs.
              dragStartBehavior:
                  widget.dragStartBehavior ?? DragStartBehavior.start,// Behavior of dragging gestures.
              enableFeedback: widget.enableFeedback, // Enable haptic feedback.
              indicator: widget.indicator,// Custom indicator widget.
              indicatorColor: widget.indicatorColor,// Color of the selected tab indicator.
              indicatorPadding: widget.indicatorPadding ?? EdgeInsets.zero,// Padding around the indicator.
              indicatorSize: widget.indicatorSize,// Size of the selected tab indicator.
              indicatorWeight: widget.indicatorWeight ?? 2,// Thickness of the selected tab indicator.
              labelColor: widget.labelColor,// Color of the selected tab label.
              labelPadding: widget.labelPadding,// Padding around the selected tab label.
              labelStyle: widget.labelStyle,// Style for the selected tab label.
              mouseCursor: widget.mouseCursor, // Cursor type on hover.
              padding: widget.padding,// Padding around the entire TabBar widget.
              physics: widget.physics,// Scroll physics for the tabs.
              splashBorderRadius: widget.splashBorderRadius, // Border radius for ink splash effect.
              splashFactory: widget.splashFactory,// Factory for ink splash effects.
              unselectedLabelColor: widget.unselectedLabelColor,// Color of unselected tab labels.
              unselectedLabelStyle: widget.unselectedLabelStyle,// Style for unselected tab labels.
            ),
            SizedBox(
              height: widget.centerGap, // Provide additional vertical space between TabBar and ScrollableTabView.
            ),
            ScrollableTabView(
              selectedIndex: selectedIndex,// Pass the selectedIndex to the ScrollableTabView.
              children: widget.children,// Pass the list of child widgets to the ScrollableTabView.
            )
          ],
        ),
      ),
    );
  }
}
