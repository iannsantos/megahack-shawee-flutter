import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/shared/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';

part 'account_controller.g.dart';

class AccountController = _AccountBase with _$AccountController;

abstract class _AccountBase with Store {
  AuthController _auth = Modular.get();

  _AccountBase() {
    loggedUser = _auth.user != null && true;
    user = _auth.user;
  }

  @observable
  FirebaseUser user;

  @observable
  bool loggedUser = false;

  @observable
  bool loading = false;

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await _auth.loginWithGoogle();
      loading = false;
      loggedUser = true;
    } catch (e) {
      loading = false;
      print('error $e');
    }
  }

  @action
  Future signOut() async {
    loading = true;
    await _auth.signOut();
    loading = false;
    user = null;
  }
}
