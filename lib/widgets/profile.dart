import 'package:flutter/material.dart';
import 'package:hairoine_app/helpers/user_helpers.dart';
import 'package:hairoine_app/objects/hairInfo.dart';
import 'package:provider/provider.dart';

class Profiles extends StatefulWidget {
  @override
  _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<HairInfo>>(context);
    print(users);
   users.forEach((user) {
     print(enumToString(user.porosity));
     print(enumToString(user.curl));
     print(enumToString(user.name));
   });
    return Container();
  }
}

    
    