import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invest_school/app/modules/courses/courses_controller.dart';
import 'package:invest_school/app/modules/courses/courses_module.dart';

void main() {
  initModule(CoursesModule());
  CoursesController courses;

  setUp(() {
    courses = CoursesModule.to.get<CoursesController>();
  });

  group('CoursesController Test', () {
    test("First Test", () {
      expect(courses, isInstanceOf<CoursesController>());
    });

    test("Set Value", () {
      expect(courses.value, equals(0));
      courses.increment();
      expect(courses.value, equals(1));
    });
  });
}
