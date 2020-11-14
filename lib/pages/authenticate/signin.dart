import 'package:flutter/material.dart';
import 'package:hairoine_app/pages/authenticate/signinemail.dart';
import 'package:hairoine_app/services/auth.dart';
import 'package:hairoine_app/styles/gradientBoxDecoration.dart';
import 'package:flutter_auth_buttons/src/button.dart';
import 'package:hairoine_app/widgets/titleText.dart';


class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

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
              height: 150,
            ),
            AppTitleText(),
            SizedBox(
              height: 220,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 270,
                child: StretchableButton(
                    buttonColor: Colors.white,
                    borderRadius: 13,
                    onPressed: () async {
                      dynamic result = await _auth.signInWithGoogle();
                      if (result == null) {
                        setState(() {
                          error = 'Something went wrong';
                        });
                      }
                    },
                    buttonPadding: 8.0,
                    //  centered: true,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 24.0, // 40dp - 2*1dp border
                          width: 24.0, // matches above
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image(
                              image: AssetImage(
                                "graphics/google-logo.png",
                                package: "flutter_auth_buttons",
                              ),
                              height: 18.0,
                              width: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 14.0),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 6.0, right: 10.0),
                        child: Text(
                          'Sign In with Google',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              color: Color(0xff004D40)),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 270,
                height: 45,
                child: StretchableButton(
                  buttonColor: Colors.white,
                  borderRadius: 13,
                  onPressed: () async {
                    dynamic result = await _auth.signInWithFacebook();
                    print('got here');
                    if (result == null) {
                      setState(() {
                        error = 'Something went wrong';
                      });
                    }
                  },
                  buttonPadding: 8.0,
                    children: <Widget>[
                Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 24.0, // 40dp - 2*1dp border
                  width: 24.0, // matches above
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "graphics/flogo-HexRBG-Wht-100.png",
                        package: "flutter_auth_buttons",
                      ),
                      height: 24.0,
                      width: 24.0,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 14.0),
              Padding(
                padding:
                const EdgeInsets.only(left: 6.0, right: 10.0),
                child: Text(
                  'Continue with Facebook',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      color: Color(0xff004D40)),
                ),
              ),
               ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 270,
                height: 45,
                child: StretchableButton(
                  buttonColor: Color(0xff004D40),
                  borderRadius: 13,
                  buttonBorderColor: Color(0xff004D40),
                  onPressed: () async {
                    widget.toggleView(false, true, false);
                  },
                  buttonPadding: 8.0,
                  centered: true,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 10.0),
                      child: Text(
                        'Sign in with User',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            color:  Colors.white,
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),

    );
  }
  //
}
