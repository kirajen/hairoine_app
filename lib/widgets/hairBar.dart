import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/home.dart';
import 'package:hairoine_app/widgets/profilePopup.dart';
import 'AuthDependentWidget.dart';

Widget hairBar(String title, bool implyLeading, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.teal,
    automaticallyImplyLeading: implyLeading,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Raleway',
      ),
    ),
    centerTitle: true,
    leading:
      IconButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => AuthDependentWidget(
                childWidget: Home(),
              )
            )
          );
        },
        icon: Icon(
          Icons.home,
        ),
        iconSize: 30,
      ),
    actions: [
      profileIcon(context),
    ],
  );
}