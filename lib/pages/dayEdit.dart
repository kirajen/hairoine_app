import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairoine_app/widgets/hairBar.dart';

class DayEdit extends StatefulWidget {

  final DateTime datetime;
  DayEdit({Key key, @required this.datetime}) : super(key: key);

  @override
  _DayEditState createState() => _DayEditState(datetime);
}

class _DayEditState extends State<DayEdit> {

  DateTime datetime;
  _DayEditState(this.datetime);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hairBar(
       this.datetime.toIso8601String(),
        true,
        context,
      ),
      body: Container(
        child: Text(
         'This is your calendar',
        ),
      ),
    );
  }
}



