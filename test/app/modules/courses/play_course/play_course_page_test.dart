import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:invest_school/app/modules/courses/play_course/play_course_page.dart';

main() {
  testWidgets('PlayCoursePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(PlayCoursePage(title: 'PlayCourse')));
    final titleFinder = find.text('PlayCourse');
    expect(titleFinder, findsOneWidget);
  });
}
