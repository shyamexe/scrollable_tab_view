import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_tab_view/src/scrollable_tab_view.dart';

class ScrollableTab extends StatefulWidget {
  int initialIndex = 0;
  Duration? animationDuration;
  bool isScrollable;
  List<Widget> tabs;
  void Function(int)? onTap;
  double? centerGap;
  List<Widget> children;
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
  ScrollPhysics? physics;
  InteractiveInkFeatureFactory? splashFactory;
  BorderRadius? splashBorderRadius;
  ScrollableTab({
    super.key,
    this.initialIndex = 0,
    this.isScrollable = false,
    this.animationDuration,
    this.centerGap = 0,
    this.onTap,
    required this.tabs,
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
  });

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
