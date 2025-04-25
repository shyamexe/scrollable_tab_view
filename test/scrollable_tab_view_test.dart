import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_config.dart';

void main() {
  // Testing group for ScrollableTab widget
  group('ScrollableTab widget testing', () {
    // Test case for initial state
    testWidgets(
      'initial state tests',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: ScrollableTabWidget()),
        );

        final text = find.text('tab Number 0');
        expect(text, findsOneWidget);
      },
    );
    // Test case for tapping the second tab
    testWidgets(
      '2nd tab tap tests',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: ScrollableTabWidget()),
        );
        final tab1 = find.text('index 1');

        await tester.tap(tab1);
        await tester.pump();

        final text = find.text('tab Number 1');
        expect(text, findsOneWidget);
      },
    );
  });

// Testing group for ScrollableTabViewWithController widget
  group('ScrollableTabViewWithController widget testing', () {
    // Test case for initial state
    testWidgets(
      'initial state tests',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: ScrollableTabViewWithControllerWidget()),
        );

        final text = find.text('tab Number 0');
        expect(text, findsOneWidget);
      },
    );
    // Test case for tapping the second tab
    testWidgets(
      '2nd tab tap tests',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: ScrollableTabViewWithControllerWidget()),
        );
        final tab1 = find.text('index 1');

        await tester.tap(tab1);
        await tester.pump();

        final text = find.text('tab Number 1');
        expect(text, findsOneWidget);
      },
    );
  });
}
