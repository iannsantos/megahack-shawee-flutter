import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/dashboard/dashboard_controller.dart';
import 'package:invest_school/app/modules/dashboard/dashboard_page.dart';

class DashboardModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => DashboardController()),
      ];

  static Inject get to => Inject<DashboardModule>.of();

  @override
  // TODO: implement view
  Widget get view => DashboardPage();
}
