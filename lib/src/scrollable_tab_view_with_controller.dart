import 'package:flutter/material.dart';
import 'scrollable_tab_view.dart';

class ScrollableTabViewWithController extends StatefulWidget {
  final TabController controller;
  final List<Widget> children;
  const ScrollableTabViewWithController({
    Key? key,
    required this.controller,
    required this.children,
  }) : super(key: key);

  @override
  State<ScrollableTabViewWithController> createState() =>
      _ScrollableTabViewWithControllerState();
}

class _ScrollableTabViewWithControllerState
    extends State<ScrollableTabViewWithController> {
  int index = 0;
  @override
  void initState() {
    widget.controller.addListener(() {
      index = widget.controller.index;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableTabView(
      selectedIndex: index,
      children: widget.children,
    );
  }
}
