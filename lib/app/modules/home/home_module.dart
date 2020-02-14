import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/courses/play_course/play_course_module.dart';
import 'package:invest_school/app/modules/home/home_controller.dart';
import 'package:invest_school/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/play', module: PlayCourseModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
