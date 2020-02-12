import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/modules/account/account_controller.dart';
import 'package:invest_school/app/modules/account/account_page.dart';
import 'package:invest_school/app/shared/auth/auth_controller.dart';
import 'package:invest_school/app/shared/auth/repositories/auth_repository.dart';

import 'account_page.dart';

class AccountModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => AccountController()),
        Bind((i) => AuthController()),
        Bind((i) => AuthRepository()),
      ];

  static Inject get to => Inject<AccountModule>.of();

  @override
  // TODO: implement view
  Widget get view => AccountPage();
}
