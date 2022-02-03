// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing_eg2/main.dart';

void main() {
  testWidgets('Test The Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, "Hello World");
    expect(find.text("Hello World"), findsWidgets);
    var button = find.text("Send");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("Hello World"), findsWidgets);
  });
}
