import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:invest_school/app/modules/curses/curses_controller.dart';
import 'package:invest_school/app/modules/curses/curses_module.dart';

void main() {
  initModule(CursesModule());
  CursesController curses;

  setUp(() {
    curses = CursesModule.to.get<CursesController>();
  });

  group('CursesController Test', () {
    test("First Test", () {
      expect(curses, isInstanceOf<CursesController>());
    });

    test("Set Value", () {
      expect(curses.value, equals(0));
      curses.increment();
      expect(curses.value, equals(1));
    });
  });
}
