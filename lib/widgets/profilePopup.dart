import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/profile.dart';
import 'package:hairoine_app/services/auth.dart';
import 'AuthDependentWidget.dart';

final AuthService _auth = AuthService();

Widget profileIcon(BuildContext context) => PopupMenuButton<String>(
  itemBuilder: (context) => [
    PopupMenuItem(
      value: '/profile',
      child: Text(
        "Go to Profile",
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.grey[800],
          fontFamily: 'Raleway',

        ),
      ),
    ),
    PopupMenuItem(
      value: 'logout',
      child: Text(
        "Log Out",
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.grey[800],
          fontFamily: 'Raleway',
        ),
      ),
    ),
  ],
    onSelected: (value) async {
    if (value == 'logout') {
      await _auth.signUserOut();
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => AuthDependentWidget(
            childWidget: Profile(),
          )
      )
      );
    }
    },
    icon: Icon(
        Icons.person,
      size: 40.0,
    ),
  offset: Offset(0, 100),
);