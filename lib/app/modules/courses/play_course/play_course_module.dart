import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/courses/play_course/play_course_controller.dart';
import 'package:invest_school/app/modules/courses/play_course/play_course_page.dart';

class PlayCourseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayCourseController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PlayCoursePage()),
      ];

  static Inject get to => Inject<PlayCourseModule>.of();
}
