import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/curses/curses_controller.dart';
import 'package:invest_school/app/modules/curses/curses_page.dart';

import 'curses_page.dart';

class CursesModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => CursesController()),
      ];

  static Inject get to => Inject<CursesModule>.of();

  @override
  // TODO: implement view
  Widget get view => CursesPage();
}
