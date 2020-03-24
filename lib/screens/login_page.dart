import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/iconTextField.dart';
import 'package:word_and_memory/components/loginText.dart';
import 'package:word_and_memory/components/textField.dart';
import 'package:word_and_memory/constants.dart';
import 'package:word_and_memory/screens/register_page.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            kSizedBoxFifty,
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1, child: IconTextField(icon: FontAwesomeIcons.at)),
                Expanded(
                    flex: 5,
                    child: customTextField(
                      labelTextField: "E-MAIL",
                      showText: false,
                    )),
              ],
            ),
            kSizedBoxFifty,
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1, child: IconTextField(icon: FontAwesomeIcons.lock)),
                Expanded(
                    flex: 5,
                    child: customTextField(
                      labelTextField: "PASSWORD",
                      showText: true,
                    )),
              ],
            ),
            kSizedBoxTwenty,
            LoginText(
              loginText: "Forget Passowrd?",
              textStyle: kLoginPageText,
              onPress: () {},
            ),
            kSizedBoxTwenty,
            LrButton(
              buttonText: "Log in",
              onPress: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
              },
            ),
            kSizedBoxTwenty,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginText(
                    loginText: "Not a member ?", textStyle: kLoginPageText),
                SizedBox(
                  width: 5.0,
                ),
                LoginText(
                  loginText: "Join now",
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
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
