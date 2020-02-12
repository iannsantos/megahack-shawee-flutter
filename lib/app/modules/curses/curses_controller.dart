import 'package:mobx/mobx.dart';

part 'curses_controller.g.dart';

class CursesController = _CursesBase with _$CursesController;

abstract class _CursesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
