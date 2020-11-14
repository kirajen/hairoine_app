import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/calendar.dart';
import 'package:hairoine_app/pages/products.dart';
import 'package:hairoine_app/pages/profile.dart';
import 'package:hairoine_app/pages/schedule.dart';
import 'package:hairoine_app/pages/loading.dart';
import 'package:hairoine_app/pages/home.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/widgets/AuthDependentWidget.dart';
import 'package:hairoine_app/widgets/wrapper.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    HairoineApp(),
  );
}

class HairoineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: AuthDependentWidget(
              childWidget: Loading(),
            )
        ),
      );
  }
}