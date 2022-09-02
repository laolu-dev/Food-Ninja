import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class EmailAuth extends AuthRep {
  EmailAuth(this._auth);

  final FirebaseAuth _auth;

  @override
  Future<bool> createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<bool> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
