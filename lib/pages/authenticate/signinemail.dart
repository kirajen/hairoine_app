import 'package:flutter/material.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/widgets/inputFieldDecorator.dart';
import 'package:hairoine_app/styles/gradientBoxDecoration.dart';
import 'package:hairoine_app/widgets/titleText.dart';

class SignInEmail extends StatefulWidget {

  final Function toggleView;

  SignInEmail({this.toggleView});


  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {


  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();


  String email = '';
  String password = '';
  String error = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          decoration: gradientBoxDecoration,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              AppTitleText(),
              SizedBox(
                height: 150,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: textInputDecorator.copyWith(hintText: 'Email'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(

                      height: 20.0,
                    ),
                    TextFormField(
                      decoration:   textInputDecorator.copyWith(hintText: 'Password'),
                      validator: (val) => val.isEmpty ? 'Type in your password' : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          color: Colors.teal[900],
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                            ),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                              if (result == null) {
                                setState(() {
                                  error = 'Could not sign in with given credentials. Forgot password?';
                                });
                              }
                            }
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                            onTap: () {
                              widget.toggleView(false, false, true);
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text(error,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.0,
                          fontFamily: 'Raleway',
                        )
                    ),
                   // SizedBox(height: 50),
                    Divider(),
                    GestureDetector(
                        onTap: () {
                          widget.toggleView(true, false, false);
                        },
                        child: Text(
                          'Back to Sign In Choices',
                          style: TextStyle(color: Colors.white),
                        )
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
