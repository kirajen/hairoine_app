import 'package:flutter/material.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/widgets/hairBar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:hairoine_app/pages/dayEdit.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hairBar(
        'Journey Overview',
        true,
        context,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'Your Hair Calendar',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.grey[800],
                  fontFamily: 'Raleway',
                ),),
            ),
            TableCalendar(
            calendarController: _controller,
              calendarStyle: CalendarStyle(
                todayColor: Color(0xfff4c5ca),
                selectedColor: Color(0xffdc8e8e),
                weekendStyle: TextStyle(color: Color(0xffd14141)),
                holidayStyle: TextStyle(color: Color(0xffd14141)),
              ),
              onDaySelected: (datetime, listDynamics) {
              print(datetime);
              print(listDynamics);
              },
              onDayLongPressed: (datetime, listDynamics) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DayEdit(datetime: datetime),
                  ),
              );
              print('long press detected');
              },
          )],
        ),
      ),
    );
  }
}
