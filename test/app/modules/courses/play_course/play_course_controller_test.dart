import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:invest_school/app/modules/courses/play_course/play_course_controller.dart';
import 'package:invest_school/app/modules/courses/play_course/play_course_module.dart';

void main() {
  initModule(PlayCourseModule());
  PlayCourseController playcourse;

  setUp(() {
    playcourse = PlayCourseModule.to.get<PlayCourseController>();
  });

  group('PlayCourseController Test', () {
    test("First Test", () {
      expect(playcourse, isInstanceOf<PlayCourseController>());
    });

    test("Set Value", () {
      expect(playcourse.value, equals(0));
      playcourse.increment();
      expect(playcourse.value, equals(1));
    });
  });
}
