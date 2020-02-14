import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/courses/courses_controller.dart';
import 'package:invest_school/app/modules/courses/courses_page.dart';

import 'courses_page.dart';

class CoursesModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => CoursesController()),
      ];

  static Inject get to => Inject<CoursesModule>.of();

  @override
  Widget get view => CoursesPage();
}
