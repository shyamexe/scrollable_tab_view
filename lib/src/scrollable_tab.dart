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
    return DefaultTabController(
      length: widget.tabs.length,
      animationDuration: widget.animationDuration,
      initialIndex: widget.initialIndex,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TabBar(
              tabs: widget.tabs,
              isScrollable: widget.isScrollable,
              
              onTap: (value) {
                widget.onTap;
                selectedIndex = value;
                setState(() {});
              },
              automaticIndicatorColorAdjustment:
                  widget.automaticIndicatorColorAdjustment ?? true,
              dividerColor: widget.dividerColor,
              dragStartBehavior:
                  widget.dragStartBehavior ?? DragStartBehavior.start,
              enableFeedback: widget.enableFeedback,
              indicator: widget.indicator,
              indicatorColor: widget.indicatorColor,
              indicatorPadding: widget.indicatorPadding ?? EdgeInsets.zero,
              indicatorSize: widget.indicatorSize,
              indicatorWeight: widget.indicatorWeight ?? 2,
              labelColor: widget.labelColor,
              labelPadding: widget.labelPadding,
              labelStyle: widget.labelStyle,
              mouseCursor: widget.mouseCursor,
              padding: widget.padding,
              physics: widget.physics,
              splashBorderRadius: widget.splashBorderRadius,
              splashFactory: widget.splashFactory,
              unselectedLabelColor: widget.unselectedLabelColor,
              unselectedLabelStyle: widget.unselectedLabelStyle,
            ),
            SizedBox(
              height: widget.centerGap,
            ),
            ScrollableTabView(
              selectedIndex: selectedIndex,
              children: widget.children,
            )
          ],
        ),
      ),
    );
  }
}
