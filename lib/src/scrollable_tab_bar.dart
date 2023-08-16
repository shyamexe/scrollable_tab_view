import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScrollableTabBar extends StatelessWidget {
  late List<Widget> tabs;
  TabController? controller;
  bool? isScrollable;
  EdgeInsetsGeometry? padding;
  Color? indicatorColor;
  bool? automaticIndicatorColorAdjustment;
  double? indicatorWeight;
  EdgeInsetsGeometry? indicatorPadding;
  Decoration? indicator;
  TabBarIndicatorSize? indicatorSize;
  Color? dividerColor;
  Color? labelColor;
  TextStyle? labelStyle;
  EdgeInsetsGeometry? labelPadding;
  Color? unselectedLabelColor;
  TextStyle? unselectedLabelStyle;
  DragStartBehavior? dragStartBehavior;
  MouseCursor? mouseCursor;
  bool? enableFeedback;
  void Function(int)? onTap;
  ScrollPhysics? physics;
  InteractiveInkFeatureFactory? splashFactory;
  BorderRadius? splashBorderRadius;

  ScrollableTabBar({
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
