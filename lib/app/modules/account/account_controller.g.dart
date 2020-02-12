// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountController on _AccountBase, Store {
  final _$userAtom = Atom(name: '_AccountBase.user');

  @override
  FirebaseUser get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(FirebaseUser value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$loggedUserAtom = Atom(name: '_AccountBase.loggedUser');

  @override
  bool get loggedUser {
    _$loggedUserAtom.context.enforceReadPolicy(_$loggedUserAtom);
    _$loggedUserAtom.reportObserved();
    return super.loggedUser;
  }

  @override
  set loggedUser(bool value) {
    _$loggedUserAtom.context.conditionallyRunInAction(() {
      super.loggedUser = value;
      _$loggedUserAtom.reportChanged();
    }, _$loggedUserAtom, name: '${_$loggedUserAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_AccountBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$loginWithGoogleAsyncAction = AsyncAction('loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$signOutAsyncAction = AsyncAction('signOut');

  @override
  Future<dynamic> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }
}
