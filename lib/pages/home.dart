import 'package:flutter/material.dart';
import 'package:hairoine_app/objects/hairInfo.dart';
import 'package:hairoine_app/objects/hairoine.dart';
import 'package:hairoine_app/pages/calendar.dart';
import 'package:hairoine_app/pages/products.dart';
import 'package:hairoine_app/pages/profile.dart';
import 'package:hairoine_app/pages/schedule.dart';
import 'package:hairoine_app/widgets/AuthDependentWidget.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/services/database.dart';
import 'package:hairoine_app/widgets/profilePopup.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {

  Map userData = {};
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    // userData = ModalRoute.of(context).settings.arguments;

    return StreamProvider<List< HairInfo>>.value(
      value: DatabaseService().users,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'The Hairoine\'s Journey',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
            ),
          ),
          centerTitle: true,
          actions: [
            profileIcon(context),
          ],
        ),
        body: Container(
          color: Color(0xffe0f2f1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Center(
              child: Text(
            'Welcome, Hairoine',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              letterSpacing: 2,
              color: Colors.grey[800],
              fontFamily: 'Raleway',
              ),
            ),
          ),
            Container(
              color: Color(0xffe0f2f1),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
                padding: EdgeInsets.all(75),
                children: [
                  Container(
                  child:
                  RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => AuthDependentWidget(
                              childWidget: Schedule(),
                            )
                        )
                        );
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Schedule',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white,
                            fontFamily: 'Raleway',

                          ),
                        ),
                      ],
                    ),
                      // color: Color(0xffcb6364),
                      color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                  Container(
                  child:
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => AuthDependentWidget(
                            childWidget: Products(),
                          )
                      )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.spa,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Products',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white,
                            fontFamily: 'Raleway',

                          ),
                        ),
                      ],
                    ),
                    // color: Color(0xffcb6364),
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                  Container(
                  child:
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => AuthDependentWidget(
                            childWidget: Calendar(),
                          )
                      )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Calendar',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white,
                            fontFamily: 'Raleway',

                          ),
                        ),
                      ],
                    ),
                    // color: Color(0xffcb6364),
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                  Container(
                  child:
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => AuthDependentWidget(
                            childWidget: Profile(),
                          )
                      )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.white,
                            fontFamily: 'Raleway',

                          ),
                        ),
                      ],
                    ),
                    // color: Color(0xffcb6364),
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                ],
              )
            ),
           ],
          ),
        ),
      ),
    );
  }
}

