import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';

import 'package:scrollable_tab_view/src/scrollable_tab_view.dart';

/// Set up the DefaultTabController to handle tab navigation.
///
///
/// int [ initialIndex ] Set the initial selected tab index.
///
/// Duration? [animationDuration]  Duration for tab transition animation.
///
/// bool [isScrollable] Allow scrolling if isScrollable is true.
///
/// List<Widget> [tabs] Provide the list of widgets as tabs.
///
/// void Function(int)? [onTap]  Call the provided Function(int)? onTap function.
///
/// double? [centerGap] Provide additional vertical space between TabBar and ScrollableTabView.
///
/// List<Widget> [children]  Pass the list of child widgets to the ScrollableTabView.
///
/// EdgeInsetsGeometry? [padding]  Padding around the entire TabBar widget.
///
/// Color? [indicatorColor] Color of the selected tab indicator.
///
/// bool? [automaticIndicatorColorAdjustment]  Adjust indicator color automatically.
///
/// double? [indicatorWeight] Thickness of the selected tab indicator.
///
/// EdgeInsetsGeometry? [indicatorPadding] Padding around the indicator.
///
/// Decoration? [indicator] Custom indicator widget.
///
/// TabBarIndicatorSize? [indicatorSize] Size of the selected tab indicator.
///
/// Color? [dividerColor] Color of dividers between tabs.
///
/// Color? [labelColor] Color of the selected tab label.
///
/// TextStyle? [labelStyle] Style for the selected tab label.
///
/// EdgeInsetsGeometry? [labelPadding]  Padding around the selected tab label.
///
/// Color? [unselectedLabelColor] Color of the unselected tab label.
///
/// TextStyle? [unselectedLabelStyle] Style for unselected tab labels.
///
/// DragStartBehavior? [dragStartBehavior]  Behavior of dragging gestures.
///
/// MouseCursor? [mouseCursor]  Cursor type on hover.
///
/// bool? [enableFeedback] Enable haptic feedback.
///
/// ScrollPhysics? [physics] Scroll physics for the tabs.
///
/// InteractiveInkFeatureFactory? [splashFactory]  Factory for ink splash effects.
///
/// BorderRadius? [splashBorderRadius] Border radius for ink splash effect.
///
/// BoxDecoration [tabBarDecoration] Decoration for the TabBar
///
/// BoxDecoration [tabViewDecoration] Decoration for the TaView
///
/// Duration [animationDuration] Animation duration
///
/// bool [automaticIndicatorColorAdjustment] Automatic indicator color
///
/// bool [centerGap] Center gap
///
/// Widgets [children] Children
///
/// bool [useMaxWidth] Use max width
///
/// AlignmentGeometry [tabAlignment] Tab alignment
///
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
  final Decoration tabBarDecoration;
  final Decoration tabViewDecoration;
  final bool useMaxWidth;
  final AlignmentGeometry tabAlignment;
  const ScrollableTab({
    Key? key,
    this.useMaxWidth = true,
    this.tabAlignment = Alignment.centerLeft,
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
    this.tabBarDecoration = const BoxDecoration(),
    this.tabViewDecoration = const BoxDecoration(),
  }) : super(key: key);

  @override
  State<ScrollableTab> createState() => _ScrollableTabState();
}

class _ScrollableTabState extends State<ScrollableTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget
          .tabs.length, // Set the number of tabs based on the provided list.
      animationDuration:
          widget.animationDuration, // Duration for tab transition animation.
      initialIndex: widget.initialIndex, // Set the initial selected tab index.
      child: SizedBox(
        width: double
            .infinity, // Set the width of the container to fill available space.
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: widget.tabBarDecoration,
              child: Align(
                alignment: widget.tabAlignment,
                child: TabBar(
                  tabs: widget.tabs, // Provide the list of widgets as tabs.
                  isScrollable: widget
                      .isScrollable, // Allow scrolling if isScrollable is true.

                  onTap: (value) {
                    widget.onTap?.call(
                        value); // Call the provided Function(int)? onTap function.
                    selectedIndex =
                        value; // Update the selectedIndex with the tapped tab index.
                    setState(
                        () {}); // Trigger a rebuild to reflect the new selectedIndex.
                  },
                  automaticIndicatorColorAdjustment:
                      widget.automaticIndicatorColorAdjustment ??
                          true, // Adjust indicator color automatically.
                  dividerColor:
                      widget.dividerColor, // Color of dividers between tabs.
                  dragStartBehavior: widget.dragStartBehavior ??
                      DragStartBehavior.start, // Behavior of dragging gestures.
                  enableFeedback:
                      widget.enableFeedback, // Enable haptic feedback.
                  indicator: widget.indicator, // Custom indicator widget.
                  indicatorColor: widget
                      .indicatorColor, // Color of the selected tab indicator.
                  indicatorPadding: widget.indicatorPadding ??
                      EdgeInsets.zero, // Padding around the indicator.
                  indicatorSize: widget
                      .indicatorSize, // Size of the selected tab indicator.
                  indicatorWeight: widget.indicatorWeight ??
                      2, // Thickness of the selected tab indicator.
                  labelColor:
                      widget.labelColor, // Color of the selected tab label.
                  labelPadding: widget
                      .labelPadding, // Padding around the selected tab label.
                  labelStyle:
                      widget.labelStyle, // Style for the selected tab label.
                  mouseCursor: widget.mouseCursor, // Cursor type on hover.
                  padding: widget
                      .padding, // Padding around the entire TabBar widget.
                  physics: widget.physics, // Scroll physics for the tabs.
                  splashBorderRadius: widget
                      .splashBorderRadius, // Border radius for ink splash effect.
                  splashFactory:
                      widget.splashFactory, // Factory for ink splash effects.
                  unselectedLabelColor: widget
                      .unselectedLabelColor, // Color of unselected tab labels.
                  unselectedLabelStyle: widget
                      .unselectedLabelStyle, // Style for unselected tab labels.
                ),
              ),
            ),
            SizedBox(
              height: widget
                  .centerGap, // Provide additional vertical space between TabBar and ScrollableTabView.
            ),
            DecoratedBox(
              decoration: widget.tabViewDecoration,
              child: ScrollableTabView(
                selectedIndex:
                    selectedIndex, // Pass the selectedIndex to the ScrollableTabView.
                children: widget
                    .children, // Pass the list of child widgets to the ScrollableTabView.
              ),
            )
          ],
        ),
      ),
    );
  }
}
