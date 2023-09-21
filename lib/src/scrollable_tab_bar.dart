import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


// This class represents a scrollable tab bar widget.
class ScrollableTabBar extends StatelessWidget {
  final List<Widget> tabs; // The list of tabs to display in the tab bar
  final TabController? controller; // The controller for the tab bar
  final bool? isScrollable; // Whether the tab bar should be scrollable
  final EdgeInsetsGeometry? padding; // The padding around the tab bar
  final Color? indicatorColor; // The color of the selected tab indicator
  final bool? automaticIndicatorColorAdjustment; // Whether the indicator color should be automatically adjusted based on the tab label's color 
  final double? indicatorWeight; // The weight (thickness) of the selected tab indicator
  final EdgeInsetsGeometry? indicatorPadding; // The padding around the selected tab indicator
  final Decoration? indicator; // The decoration for the selected tab indicator
  final TabBarIndicatorSize? indicatorSize; // The size of the selected tab indicator
  final Color? dividerColor; // The color of the dividers between tabs
  final Color? labelColor; // The color of the selected tab label
  final TextStyle? labelStyle; // The style of the selected tab label
  final EdgeInsetsGeometry? labelPadding; // The padding around the selected tab label
  final Color? unselectedLabelColor; // The color of the unselected tab labels
  final TextStyle? unselectedLabelStyle; // The style of the unselected tab labels
  final DragStartBehavior? dragStartBehavior; // The drag start behavior for the tab bar
  final MouseCursor? mouseCursor; // The mouse cursor for the tab bar
  final bool? enableFeedback; // Whether feedback should be enabled for the tab bar
  final void Function(int)? onTap; // The callback function when a tab is tapped
  final ScrollPhysics? physics; // The scroll physics for the tab bar
  final InteractiveInkFeatureFactory? splashFactory; // The factory for creating ink splashes when a tab is tapped
  final BorderRadius? splashBorderRadius; // The border radius for the ink splashes


  const ScrollableTabBar({
    Key? key,
    required this.tabs,
    this.controller,
    this.isScrollable = false,
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
    this.onTap,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
  }) : super(key: key);

  @override
  TabBar build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: tabs,
      onTap: onTap,
      automaticIndicatorColorAdjustment:
          automaticIndicatorColorAdjustment ?? true,
      dividerColor: dividerColor,
      dragStartBehavior: dragStartBehavior!,
      enableFeedback: enableFeedback,
      indicator: indicator,
      indicatorColor: indicatorColor,
      indicatorPadding: indicatorPadding!,
      indicatorSize: indicatorSize,
      indicatorWeight: indicatorWeight!,
      isScrollable: isScrollable!,
      labelColor: labelColor,
      labelPadding: labelPadding,
      labelStyle: labelStyle,
      mouseCursor: mouseCursor,
      padding: padding,
      physics: physics,
      splashBorderRadius: splashBorderRadius,
      splashFactory: splashFactory,
      unselectedLabelColor: unselectedLabelColor,
      unselectedLabelStyle: unselectedLabelStyle,
    );
  }
}
