import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/authenticate/register.dart';
import 'package:hairoine_app/pages/authenticate/signin.dart';
import 'package:hairoine_app/pages/authenticate/signinemail.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  bool showSignInEmail = false;
  bool showRegistration = false;
  void toggleView(bool showSignInB, bool showSignInEmailB, bool showRegisterB) {
    setState(() {
      showSignIn = showSignInB;
      showSignInEmail = showSignInEmailB;
      showRegistration = showRegisterB; });

  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else if (showSignInEmail) {
      return SignInEmail(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
