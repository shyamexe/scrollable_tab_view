import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
