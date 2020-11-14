import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/authenticate/authenticate.dart';
import 'package:hairoine_app/services/auth.dart';

class AuthDependentWidget extends StatelessWidget {
  final AuthService _auth = AuthService();
  final Widget childWidget;

  AuthDependentWidget({Key key, @required this.childWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _auth.user,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot);
        if (snapshot.hasData) {//you handle other cases...
          return childWidget;
        } else {
          return Authenticate();
        }
      },
    );
  }
}
