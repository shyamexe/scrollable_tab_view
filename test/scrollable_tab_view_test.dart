import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_config.dart';

void main() {
  group('ScrollableTab widget testing', () {
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

  group('ScrollableTabViewWithController widget testing', () {
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
