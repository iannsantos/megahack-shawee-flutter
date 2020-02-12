import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:invest_school/app/modules/curses/curses_page.dart';

main() {
  testWidgets('CursesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CursesPage(title: 'Curses')));
    final titleFinder = find.text('Curses');
    expect(titleFinder, findsOneWidget);
  });
}
