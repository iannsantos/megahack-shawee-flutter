import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository extends Disposable {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> loginWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);

    return user;
  }

  Future<FirebaseUser> loginWithEmailAndPassword(
      String email, String password) async {
    final AuthResult emailUser = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = emailUser.user;
    print("signed in " + user.displayName);

    return user;
  }

  Future<FirebaseUser> getUser() async {
    return _auth.currentUser();
  }

  Future signOut() async {
    return _auth.signOut();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
