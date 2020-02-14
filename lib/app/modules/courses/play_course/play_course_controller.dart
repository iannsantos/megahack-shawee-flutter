import 'package:mobx/mobx.dart';

part 'play_course_controller.g.dart';

class PlayCourseController = _PlayCourseBase with _$PlayCourseController;

abstract class _PlayCourseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
