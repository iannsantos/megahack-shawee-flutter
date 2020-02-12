import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/help/help_controller.dart';
import 'package:invest_school/app/modules/help/help_page.dart';

class HelpModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => HelpController()),
      ];

  static Inject get to => Inject<HelpModule>.of();

  @override
  // TODO: implement view
  Widget get view => HelpPage();
}
