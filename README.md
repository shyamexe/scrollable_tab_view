# scrollable_tab_view
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
[![pub package](https://img.shields.io/pub/v/scrollable_tab_view.svg)](https://pub.dartlang.org/packages/scrollable_tab_view)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Flutter package provides a vertical scrollable tab bar widget that allows you to display resizable tabs

### Demo



<IMG height="400px" src="https://github.com/shyamexe/scrollable_tab_view/assets/93277108/7ffe8424-097a-4b4c-8d8d-1dc62ce93448"></IMG>


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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="http://shyamjith.in"><img src="https://avatars.githubusercontent.com/u/93277108?v=4?s=100" width="100px;" alt="Shyamjith"/><br /><sub><b>Shyamjith</b></sub></a><br /><a href="https://github.com/shyamexe/scrollable_tab_view/commits?author=shyamexe" title="Code">💻</a> <a href="https://github.com/shyamexe/scrollable_tab_view/commits?author=shyamexe" title="Documentation">📖</a> <a href="#projectManagement-shyamexe" title="Project Management">📆</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!