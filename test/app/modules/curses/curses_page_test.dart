import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invest_school/app/modules/courses/courses_page.dart';

main() {
  testWidgets('CoursesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CoursesPage(title: 'Courses')));
    final titleFinder = find.text('Courses');
    expect(titleFinder, findsOneWidget);
  });
}
