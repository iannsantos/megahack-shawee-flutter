import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invest_school/app/modules/account/account_controller.dart';
import 'package:invest_school/app/modules/account/account_module.dart';

void main() {
  initModule(AccountModule());
  AccountController account;

  setUp(() {
    account = AccountModule.to.get<AccountController>();
  });

  group('AccountController Test', () {
    test("First Test", () {
      expect(account, isInstanceOf<AccountController>());
    });
  });
}
