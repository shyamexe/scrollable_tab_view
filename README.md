# scrollable_tab_view
[![pub package](https://img.shields.io/pub/v/scrollable_tab.svg)](https://pub.dartlang.org/packages/scrollable_tab_view)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Flutter package provides a vertical scrollable tab bar widget that allows you to display resizable tabs

### Demo

![gif](https://github.com/shyamexe/scrollable_tab_view/assets/93277108/7ffe8424-097a-4b4c-8d8d-1dc62ce93448)

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  scrollable_tab_view: <latest-version>
```

## Installation

Import the package in your Dart file:

```yaml
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

```

## Usage

The ScrollableTab widget allows you to create a tab bar with scrollable tabs without using a controller.

```dart
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

```

The ScrollableTabBar and ScrollableTabViewWithController widgets allow you to create a tab bar with scrollable tabs using a TabController.

```dart
Column(
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
),
```
