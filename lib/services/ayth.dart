import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sing in anon
  Future singInAnon() async {
    try {
      final UserCredential result = await _auth.signInAnonymously();
      // User user = result;

      // print("Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }
  }

  //sing in with email & pass

  //register with email & pass

  //sing out

}
