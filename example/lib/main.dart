// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
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
    // Initialize the TabController with a length of 5 and a vsync provided by this class
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // Dispose the TabController when the state is disposed to free up resources
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
              // TitleWidget widget that displays a centered title
              const TitleWidget(
                title: 'ScrollableTab widget',
              ),
              // ScrollableTab widget that displays horizontal tabs and their content
              ScrollableTab(
                labelColor: Colors.black,
                onTap: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
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
              // TitleWidget widget that displays a centered title
              const TitleWidget(
                title: 'ScrollableTabBar',
              ),
              // ScrollableTabBar widget that displays the tabs only without the content
              ScrollableTabBar(
                labelColor: Colors.black,
                controller: controller,
                tabs: List.generate(
                    5,
                    (index) => Tab(
                          text: 'index $index',
                        )),
              ),
              // ScrollableTabViewWithController widget that displays the tab content with a shared TabController
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

// TitleWidget widget that displays a centered title
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
