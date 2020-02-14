import 'package:mobx/mobx.dart';

part 'courses_controller.g.dart';

class CoursesController = _CoursesBase with _$CoursesController;

abstract class _CoursesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
