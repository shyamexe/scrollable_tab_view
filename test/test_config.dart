import 'package:flutter/material.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

class ScrollableTabWidget extends StatelessWidget {
  const ScrollableTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollableTab(
        labelColor: Colors.black,
        tabs: List.generate(
            5,
            (index) => Tab(
                  text: 'index $index',
                )),
        children: List.generate(
          5,
          (index) => ListTile(
            title: Center(
              child: Text(
                'tab Number $index',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 20.0 + (30 * index)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScrollableTabViewWithControllerWidget extends StatefulWidget {
  const ScrollableTabViewWithControllerWidget({super.key});

  @override
  State<ScrollableTabViewWithControllerWidget> createState() =>
      _ScrollableTabViewWithControllerWidgetState();
}

class _ScrollableTabViewWithControllerWidgetState
    extends State<ScrollableTabViewWithControllerWidget>
    with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ScrollableTabBar(
          labelColor: Colors.black,
          controller: controller,
          tabs: List.generate(
              5,
              (index) => Tab(
                    text: 'index $index',
                  )),
        ),
        ScrollableTabViewWithController(
          controller: controller,
          children: List.generate(
              5,
              (index) => ListTile(
                    title: Center(
                      child: Text(
                        'tab Number $index',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontSize: 20.0 + (30 * index)),
                      ),
                    ),
                  )),
        )
      ],
    ));
  }
}
