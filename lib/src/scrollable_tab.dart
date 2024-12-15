import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';

import 'package:scrollable_tab_view/src/scrollable_tab_view.dart';

/// A widget that provides a scrollable tab view with customizable options.
///
/// The [ScrollableTab] widget allows you to create a scrollable tab bar with a
/// variety of customization options for the appearance and behavior of tabs.
///
/// This widget supports specifying the initial index of the selected tab,
/// animation durations, scroll behavior, tab indicators, label styles, and more.
///
/// Example usage:
/// ```dart
/// ScrollableTab(
///   initialIndex: 0,
///   animationDuration: Duration(milliseconds: 300),
///   isScrollable: true,
///   tabs: [
///     Tab(text: 'Tab 1'),
///     Tab(text: 'Tab 2'),
///   ],
///   onTap: (index) {
///     print('Tab $index tapped');
///   },
///   centerGap: 10.0,
///   children: [
///     Container(child: Text('Content for Tab 1')),
///     Container(child: Text('Content for Tab 2')),
///   ],
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
///   physics: BouncingScrollPhysics(),
///   splashFactory: InkRipple.splashFactory,
///   splashBorderRadius: BorderRadius.circular(8.0),
///   tabBarDecoration: BoxDecoration(
///     color: Colors.white,
///     border: Border(bottom: BorderSide(color: Colors.grey, width: 1.0)),
///   ),
///   tabViewDecoration: BoxDecoration(
///     color: Colors.grey[100],
///   ),
///   useMaxWidth: true,
///   tabAlignment: Alignment.center,
/// )
/// ```
class ScrollableTab extends StatefulWidget {
  /// The index of the tab that is initially selected.
  ///
  /// This property determines which tab is selected when the widget is first built.
  final int initialIndex;

  /// The duration of the animation for tab transitions.
  ///
  /// This controls how long it takes to animate between tabs. If `null`, the default
  /// duration is used.
  final Duration? animationDuration;

  /// Whether the tabs should be scrollable.
  ///
  /// If `true`, the tabs can be scrolled horizontally if there are more tabs than
  /// can fit on the screen. If `false`, the tabs are laid out in a fixed manner.
  final bool isScrollable;

  /// The list of widgets representing the tabs.
  ///
  /// Each widget in this list is displayed as a tab. Typically, these are `Tab` widgets.
  final List<Widget> tabs;

  /// Callback function called when a tab is tapped.
  ///
  /// The function receives the index of the tapped tab as an argument.
  final void Function(int)? onTap;

  /// Additional vertical space between the TabBar and the ScrollableTabView.
  ///
  /// This adds extra space between the TabBar and the content displayed below it.
  final double? centerGap;

  /// The list of widgets displayed as the content of each tab.
  ///
  /// The order of the widgets in this list corresponds to the order of the tabs.
  final List<Widget> children;

  /// Padding around the entire TabBar widget.
  ///
  /// This adds space around the edges of the TabBar.
  final EdgeInsetsGeometry? padding;

  /// Color of the selected tab indicator.
  ///
  /// This sets the color of the line or shape that indicates the selected tab.
  final Color? indicatorColor;

  /// Whether the indicator color should be adjusted automatically based on the tab.
  ///
  /// If `true`, the indicator color will change based on the currently selected tab.
  final bool? automaticIndicatorColorAdjustment;

  /// Thickness of the selected tab indicator.
  ///
  /// This sets how thick the indicator line or shape is.
  final double? indicatorWeight;

  /// Padding around the selected tab indicator.
  ///
  /// This sets the space between the indicator and the tab's content.
  final EdgeInsetsGeometry? indicatorPadding;

  /// Custom indicator widget.
  ///
  /// This allows you to provide a custom widget to represent the selected tab indicator.
  final Decoration? indicator;

  /// Size of the selected tab indicator.
  ///
  /// Determines whether the indicator should be sized to fit the tab's label or
  /// to fill the entire tab area.
  final TabBarIndicatorSize? indicatorSize;

  /// Color of the dividers between tabs.
  ///
  /// This sets the color of the lines that separate the tabs.
  final Color? dividerColor;

  /// Color of the selected tab label.
  ///
  /// This sets the color of the text or icon for the selected tab.
  final Color? labelColor;

  /// Style for the selected tab label.
  ///
  /// This sets the font style, size, and other text attributes for the selected tab.
  final TextStyle? labelStyle;

  /// Padding around the selected tab label.
  ///
  /// Adds space around the label text or icon of the selected tab.
  final EdgeInsetsGeometry? labelPadding;

  /// Color of the unselected tab labels.
  ///
  /// This sets the color of the text or icon for the tabs that are not selected.
  final Color? unselectedLabelColor;

  /// Style for unselected tab labels.
  ///
  /// This sets the font style, size, and other text attributes for the tabs that
  /// are not selected.
  final TextStyle? unselectedLabelStyle;

  /// Behavior of dragging gestures.
  ///
  /// Determines whether dragging should start at the touch point or not.
  final DragStartBehavior? dragStartBehavior;

  /// Cursor type when hovering over the tabs.
  ///
  /// This sets the type of mouse cursor displayed when hovering over the tabs.
  final MouseCursor? mouseCursor;

  /// Whether to enable haptic feedback on tab interactions.
  ///
  /// If `true`, the device will provide haptic feedback when a tab is tapped.
  final bool? enableFeedback;

  /// Scroll physics for the tabs.
  ///
  /// Determines how the tabs scroll and behave when dragged.
  final ScrollPhysics? physics;

  /// Factory for ink splash effects on tab interactions.
  ///
  /// Customizes the ripple effect seen when interacting with tabs.
  final InteractiveInkFeatureFactory? splashFactory;

  /// Border radius for the ink splash effect.
  ///
  /// Sets the curvature of the border for the ripple effect.
  final BorderRadius? splashBorderRadius;

  /// Decoration for the TabBar widget.
  ///
  /// Allows you to set the visual decoration of the TabBar, including background color,
  /// border, and other styling.
  final Decoration tabBarDecoration;

  /// Decoration for the TabView widget.
  ///
  /// Allows you to set the visual decoration of the content view area under the tabs.
  final Decoration tabViewDecoration;

  /// Whether to use the maximum available width for the tabs.
  ///
  /// If `true`, the tabs will expand to use the maximum width available.
  final bool useMaxWidth;

  /// Alignment of the tabs within the available space.
  ///
  /// Determines how the tabs are aligned horizontally.
  final AlignmentGeometry tabAlignment;

  /// Specifies the horizontal alignment of the tabs within a [TabBar].
  ///
  ///If [TabBar.isScrollable] is false, only [TabAlignment.fill] and [TabAlignment.center] are supported. Otherwise an exception is thrown.
  ///
  ///If [TabBar.isScrollable] is true, only [TabAlignment.start], [TabAlignment.startOffset], and [TabAlignment.center] are supported. Otherwise an exception is thrown.
  ///
  ///If this is null, then the value of [TabBarTheme.tabAlignment] is used.
  ///
//If [TabBarTheme.tabAlignment] is null and [ThemeData.useMaterial3] is true, then [TabAlignment.startOffset] is used if [isScrollable] is true, otherwise [TabAlignment.fill] is used.
  ///
  ///If [TabBarTheme.tabAlignment] is null and [ThemeData.useMaterial3] is false, then [TabAlignment.center] is used if [isScrollable] is true, otherwise [TabAlignment.fill] is used.
  final TabAlignment? tabBarAlignment;

  const ScrollableTab({
    Key? key,
    this.useMaxWidth = true,
    this.tabAlignment = Alignment.centerLeft,
    this.tabBarAlignment,
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
      ///Set the number of tabs based on the provided list.
      length: widget.tabs.length,

      /// Duration for tab transition animation.
      animationDuration: widget.animationDuration,

      ///Set the initial selected tab index.
      initialIndex: widget.initialIndex, //
      child: SizedBox(
        ///Set the width of the container to fill available space.
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: widget.tabBarDecoration,
              child: Align(
                alignment: widget.tabAlignment,
                child: TabBar(
                  tabAlignment: widget
                      .tabBarAlignment, // Specifies the horizontal alignment of the tabs within a [TabBar].
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
