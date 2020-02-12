import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/shared/auth/repositories/auth_repository.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthBase with _$AuthController;

abstract class _AuthBase with Store {
  final AuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  @action
  setUser(FirebaseUser value) => user = value;

  _AuthBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.loginWithGoogle();
  }

  @action
  Future signOut() async {
    await _authRepository.signOut();
    user = null;
  }
}
