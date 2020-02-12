import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/help/help_module.dart';

import '../account/account_module.dart';
import '../curses/curses_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: <Widget>[
          CursesModule(),
          HelpModule(),
          AccountModule(),
        ],
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            items: [
              BottomNavigationBarItem(
                title: Text("Curses"),
                icon: Icon(Icons.school),
              ),
              BottomNavigationBarItem(
                title: Text("Help"),
                icon: Icon(Icons.help),
              ),
              BottomNavigationBarItem(
                title: Text("Account"),
                icon: Icon(Icons.account_box),
              ),
            ],
            elevation: 10,
            onTap: controller.changeIndex,
          );
        },
      ),
    );
  }
}
