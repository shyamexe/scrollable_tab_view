// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollable Tab View'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TitleWidget(
                title: 'ScrollableTab widget',
              ),
              ScrollableTab(
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
                        )),
              ),
              const TitleWidget(
                title: 'ScrollableTab widget',
              ),
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
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
