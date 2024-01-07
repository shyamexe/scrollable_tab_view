import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// [ ScrollableTabBar ] represents a scrollable tab bar widget.
///
/// [tabs] The list of tabs to display in the tab bar
/// [controller]  The controller for the tab bar
/// [isScrollable]  Whether the tab bar should be scrollable
/// [padding]  The padding around the tab bar
/// [indicatorColor]  The color of the selected tab indicator
/// [automaticIndicatorColorAdjustment]  Whether the indicator color should be automatically adjusted based on the tab label's color
/// [indicatorWeight]  The weight (thickness) of the selected tab indicator
/// [indicatorPadding]  The padding around the selected tab indicator
/// [indicator]  The decoration for the selected tab indicator
/// [indicatorSize]  The size of the selected tab indicator
/// [dividerColor]  The color of the dividers between tabs
/// [labelColor]  The color of the selected tab label
/// [labelStyle]  The style of the selected tab label
/// [labelPadding]  The padding around the selected tab label
/// [unselectedLabelColor]  The color of the unselected tab labels
/// [unselectedLabelStyle]  The style of the unselected tab labels
/// [dragStartBehavior]  The drag start behavior for the tab bar
/// [mouseCursor]  The mouse cursor for the tab bar
/// [enableFeedback]  Whether feedback should be enabled for the tab bar
/// [onTap]  The callback function when a tab is tapped
/// [physics]  The scroll physics for the tab bar
/// [splashFactory]  The factory for creating ink splashes when a tab is tapped
/// [splashBorderRadius]  The border radius for the ink splashes
class ScrollableTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final TabController? controller;
  final bool? isScrollable;
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
  final void Function(int)? onTap;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
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
