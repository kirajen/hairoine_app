import 'package:flutter/material.dart';
import 'package:hairoine_app/enums/user_enums.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/widgets/inputFieldDecorator.dart';

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {

  final _formKey = GlobalKey<FormState>();
  final sexEnum gender = sexEnum.other;
  final String name = '';
  final String lastName = '';
  final String country = '';

  String _currentFirstName;
  String _currentLastName;
  String _currentCountry;
  sexEnum _currentGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration:  textInputDecorator.copyWith(hintText: 'Name'),
                  validator: (val) => val.isEmpty ? 'Enter a Name' : null,
                  onChanged: (val) {
                    setState(() => _currentFirstName = val);
                  },
                ),
                SizedBox(

                  height: 20.0,
                ),
                TextFormField(
                  decoration: textInputDecorator.copyWith(hintText: 'Last Name'),
                  validator: (val) => val.isEmpty ? 'Enter a Last Name' : null,
                  onChanged: (val) {
                    setState(() => _currentLastName = val);
                  },
                ),
                SizedBox(

                  height: 20.0,
                ),
                Row(
                  children: [

                  ],
                )
              ],
            ),
          )

    );
  }
}
