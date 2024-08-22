import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// [ScrollableTabBar] represents a scrollable tab bar widget.
///
/// This widget provides a customizable tab bar that allows for scrolling and
/// various styling options. It supports defining the appearance and behavior
/// of the tabs, including their indicators, labels, and interactions.
///
/// Example usage:
/// ```dart
/// ScrollableTabBar(
///   tabs: [
///     Tab(text: 'Tab 1'),
///     Tab(text: 'Tab 2'),
///   ],
///   controller: _tabController,
///   isScrollable: true,
///   padding: EdgeInsets.all(8.0),
///   indicatorColor: Colors.blue,
///   automaticIndicatorColorAdjustment: true,
///   indicatorWeight: 4.0,
///   indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
///   indicator: BoxDecoration(
///     color: Colors.blue,
///     borderRadius: BorderRadius.circular(8.0),
///   ),
///   indicatorSize: TabBarIndicatorSize.label,
///   dividerColor: Colors.grey,
///   labelColor: Colors.black,
///   labelStyle: TextStyle(fontWeight: FontWeight.bold),
///   labelPadding: EdgeInsets.symmetric(vertical: 8.0),
///   unselectedLabelColor: Colors.grey,
///   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
///   dragStartBehavior: DragStartBehavior.start,
///   mouseCursor: SystemMouseCursors.click,
///   enableFeedback: true,
///   onTap: (index) {
///     print('Tab $index tapped');
///   },
///   physics: BouncingScrollPhysics(),
///   splashFactory: InkRipple.splashFactory,
///   splashBorderRadius: BorderRadius.circular(8.0),
///   tabAlignment: TabAlignment.start,
/// )
/// ```

class ScrollableTabBar extends StatelessWidget {
  /// The list of tabs to display in the tab bar.
  ///
  /// Each widget in this list represents a tab. Typically, these are `Tab` widgets.
  final List<Widget> tabs;

  /// The controller for the tab bar.
  ///
  /// This [TabController] manages the state of the tab bar, including which tab is
  /// currently selected and handling tab changes.
  final TabController? controller;

  /// Whether the tab bar should be scrollable.
  ///
  /// If `true`, the tab bar will allow horizontal scrolling if there are more tabs
  /// than can fit in the available space. If `false`, the tabs will be laid out in
  /// a fixed, non-scrollable manner.
  final bool? isScrollable;

  /// The padding around the tab bar.
  ///
  /// This padding is applied to all sides of the tab bar.
  final EdgeInsetsGeometry? padding;

  /// The color of the selected tab indicator.
  ///
  /// This sets the color of the line or shape that indicates the currently selected tab.
  final Color? indicatorColor;

  /// Whether the indicator color should be automatically adjusted based on the tab label's color.
  ///
  /// If `true`, the color of the indicator will be adjusted to complement the color of the
  /// currently selected tab's label. If `false`, the indicator color remains constant.
  final bool? automaticIndicatorColorAdjustment;

  /// The weight (thickness) of the selected tab indicator.
  ///
  /// This defines how thick the line or shape representing the selected tab will be.
  final double? indicatorWeight;

  /// The padding around the selected tab indicator.
  ///
  /// This padding is applied around the indicator's area, affecting its position relative
  /// to the tab content.
  final EdgeInsetsGeometry? indicatorPadding;

  /// The decoration for the selected tab indicator.
  ///
  /// Allows customization of the indicator's appearance using [BoxDecoration], including
  /// background color, border radius, and more.
  final Decoration? indicator;

  /// The size of the selected tab indicator.
  ///
  /// Determines whether the indicator should be sized to fit the tab label or to occupy
  /// the entire tab area. Values can be `TabBarIndicatorSize.label` or `TabBarIndicatorSize.tab`.
  final TabBarIndicatorSize? indicatorSize;

  /// The color of the dividers between tabs.
  ///
  /// Sets the color of the lines or space separating the tabs in the tab bar.
  final Color? dividerColor;

  /// The color of the selected tab label.
  ///
  /// Sets the color of the text or icon for the currently selected tab.
  final Color? labelColor;

  /// The style of the selected tab label.
  ///
  /// Defines the text style (e.g., font weight, size) for the label of the selected tab.
  final TextStyle? labelStyle;

  /// The padding around the selected tab label.
  ///
  /// Adds space around the text or icon of the selected tab, affecting its positioning
  /// within the tab area.
  final EdgeInsetsGeometry? labelPadding;

  /// The color of the unselected tab labels.
  ///
  /// Sets the color of the text or icon for tabs that are not currently selected.
  final Color? unselectedLabelColor;

  /// The style of the unselected tab labels.
  ///
  /// Defines the text style (e.g., font weight, size) for the labels of unselected tabs.
  final TextStyle? unselectedLabelStyle;

  /// The drag start behavior for the tab bar.
  ///
  /// Determines how drag gestures should be interpreted. Defaults to [DragStartBehavior.start].
  final DragStartBehavior? dragStartBehavior;

  /// The mouse cursor for the tab bar.
  ///
  /// Sets the cursor type when the mouse hovers over the tab bar. Defaults to `SystemMouseCursors.click`.
  final MouseCursor? mouseCursor;

  /// Whether feedback should be enabled for the tab bar.
  ///
  /// If `true`, haptic feedback will be provided when a tab is tapped. Defaults to `false`.
  final bool? enableFeedback;

  /// Callback function when a tab is tapped.
  ///
  /// This function receives the index of the tapped tab as an argument. It allows handling
  /// tab tap events and performing actions based on the selected tab.
  final void Function(int)? onTap;

  /// The scroll physics for the tab bar.
  ///
  /// Determines the behavior of the tab bar's scrolling. For example, it can enable bouncing
  /// or clamping effects.
  final ScrollPhysics? physics;

  /// The factory for creating ink splashes when a tab is tapped.
  ///
  /// Customizes the ripple effect seen when interacting with tabs. Defaults to `InkRipple.splashFactory`.
  final InteractiveInkFeatureFactory? splashFactory;

  /// The border radius for the ink splashes.
  ///
  /// Sets the curvature of the border for the ripple effect when a tab is tapped.
  final BorderRadius? splashBorderRadius;

  /// The alignment of the tabs within the tab bar.
  ///
  /// Determines how the tabs are aligned horizontally within the available space.
  final TabAlignment? tabAlignment;
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
    this.tabAlignment,
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
      tabAlignment: tabAlignment,
    );
  }
}
