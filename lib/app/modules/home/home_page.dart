import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/dashboard/dashboard_module.dart';
import 'package:invest_school/app/modules/help/help_module.dart';
import 'package:invest_school/app/shared/style/colors.dart';

import '../account/account_module.dart';
import '../courses/courses_module.dart';
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
          CoursesModule(),
          HelpModule(),
          DashboardModule(),
          AccountModule(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(PRIMARY_COLOR),
        onPressed: () {},
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Observer(
        builder: (_) {
          return BubbleBottomBar(
            elevation: 20,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            fabLocation: BubbleBottomBarFabLocation.end,
            hasNotch: true,
            opacity: 0.2,
            currentIndex: controller.selectedIndex,
            onTap: controller.changeIndex,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                title: Text("Courses"),
                icon: Icon(Icons.school, color: Colors.blueGrey),
                backgroundColor: Colors.blueGrey,
              ),
              BubbleBottomBarItem(
                title: Text("Search"),
                icon: Icon(Icons.search, color: Colors.grey),
                backgroundColor: Colors.grey,
              ),
              BubbleBottomBarItem(
                title: Text("Dashboard"),
                icon: Icon(FontAwesome.th_large, color: Colors.blue),
                backgroundColor: Colors.blue,
              ),
              BubbleBottomBarItem(
                title: Text("Account"),
                icon: Icon(Icons.person, color: Color(PRIMARY_COLOR)),
                backgroundColor: Color(PRIMARY_COLOR),
              ),
            ],
          );
        },
      ),
    );
  }
}
