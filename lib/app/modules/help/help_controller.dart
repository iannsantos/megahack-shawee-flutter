import 'package:mobx/mobx.dart';

part 'help_controller.g.dart';

class HelpController = _HelpBase with _$HelpController;

abstract class _HelpBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
