import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:invest_school/app/modules/help/help_page.dart';

main() {
  testWidgets('HelpPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HelpPage(title: 'Help')));
    final titleFinder = find.text('Help');
    expect(titleFinder, findsOneWidget);
  });
}
