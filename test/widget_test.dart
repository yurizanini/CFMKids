import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cfmkids/main.dart';

// TODO: Add test cases for Sign up button
// TODO: Add test cases to see if images displayed correctly
// TODO: Add test cases to see if the layout is centered and correctly displaying padding and spacing
// TODO: Add test cases to verify colors and texts for buttons
// TODO: Add test cases to verify the app against different screen sizes and orientations

void main() {
  testWidgets('Login button test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    //Verify that the Login button is displayed
    final loginBtn = find.byKey(const Key('loginBtn'));
    expect(loginBtn, findsOneWidget);

    // Tap the Login button
    await tester.tap(loginBtn);
    await tester.pump();

    // Verify that the login button was pressed by checking for an action
    expect(find.byType(SnackBar), findsOneWidget);
  });
}
