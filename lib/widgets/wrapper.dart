import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/authenticate/authenticate.dart';
import 'package:hairoine_app/pages/loading.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/widgets/AuthDependentWidget.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /* final user = Provider.of<HairoineUser>(context);
    print('user from wrapper - $user');
    if (user == null) {
      return Authenticate();
    } else {
      return Loading();
    } */
    // return either the Home or Authenticate widget
    /* StreamBuilder(
      stream: _auth.user,
      builder: (context, snapshot),
      return(
        home: snapshot.hasData? Loading() : Authenticate;
    )
    )*/
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => AuthDependentWidget(
        childWidget: Loading(),
      )
    )
    );
  }
}


