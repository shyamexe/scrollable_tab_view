import 'package:flutter/material.dart';

class ScrollableTabView extends StatelessWidget {
   List<Widget> children;
   int selectedIndex;
   ScrollableTabView({
    Key? key,
    required this.children,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: double.infinity,
      child: children[selectedIndex],
    );
  }
}
