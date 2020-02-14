import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardBase with _$DashboardController;

abstract class _DashboardBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
