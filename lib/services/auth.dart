import 'package:firebase_auth/firebase_auth.dart';
import 'package:hairoine_app/enums/user_enums.dart';
import 'package:hairoine_app/services/database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  Stream<User> get user {
    print('streaming now');
    return _auth.authStateChanges();
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in email & pass
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email.trim(), password: password);
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithGoogle() async {

  }

  Future signInWithFacebook() async {

  }

  // sign in google

  // register email & password
  
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password);
      User user = result.user;
      await DatabaseService(uid: user.uid).updateUserData('User', porosityEnum.med, sexEnum.other, curl.twoA);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out

  Future signUserOut() async {
    try {
      print('signing out');
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}