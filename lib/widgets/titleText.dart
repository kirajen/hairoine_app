import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hairoine\'s Journey',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 48.0,
              color: Colors.white,
              fontFamily: "Roboto")),
    );
  }
}
