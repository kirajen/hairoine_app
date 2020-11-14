import 'package:flutter/material.dart';
import 'package:hairoine_app/widgets/hairBar.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: hairBar(
            'Journey Planner',
          true,
          context,
        ),
        body: Container(
            color: Color(0xffe0f2f1),
            padding: EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      children: [
                        Text(
                            'Schedule your Treatment\s'),
                      ]
                  ),
                ]
            )
        ),

    );
  }
}
