import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  var pageController = PageController();

  @observable
  int selectedIndex = 0;

  @action
  void changeIndex(int newIndex) {
    pageController.jumpToPage(newIndex);
    selectedIndex = newIndex;
  }
}
