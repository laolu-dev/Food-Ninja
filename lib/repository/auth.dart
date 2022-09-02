abstract class AuthRep {
  Future signIn(String email, String password);
  Future createUser(String email, String password);
  Future<void> signOut();
}
