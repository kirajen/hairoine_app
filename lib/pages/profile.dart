import 'package:flutter/material.dart';
import 'package:hairoine_app/widgets/hairBar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  void getData() async {

  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hairBar('Journey Overview', true, context),
      body: Text('Your Profile'),
    );
  }
}
