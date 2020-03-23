import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/iconTextField.dart';
import 'package:word_and_memory/components/loginText.dart';

import 'package:word_and_memory/components/loginTextField.dart';
import 'package:word_and_memory/constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1, child: IconTextField(icon: FontAwesomeIcons.at)),
                Expanded(
                    flex: 5,
                    child: LoginTextField(
                      labelTextField: "E-MAIL",
                    )),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1, child: IconTextField(icon: FontAwesomeIcons.lock)),
                Expanded(
                    flex: 5,
                    child: LoginTextField(
                      labelTextField: "PASSWORD",
                    )),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            LoginText(
              loginText: "Forget Passowrd?",textStyle: kLoginPageText,
            ),
            SizedBox(
              height: 20.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                onPressed: () {},
                child: Text("Log in"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                color: Color(0xFFFFCDA3),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginText(loginText: "Not a member ?",textStyle: kLoginPageText),
                SizedBox(
                  width: 5.0,
                ),
                LoginText(
                  loginText: "Join now",
                  onPress: () {},
                  textStyle: kJoinNow,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
