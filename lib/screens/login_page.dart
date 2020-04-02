import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/customTextField.dart';
import 'package:word_and_memory/components/iconTextField.dart';
import 'package:word_and_memory/components/loginText.dart';
import 'package:word_and_memory/services/auth.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/screens/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final AuthService auth = AuthService();
  Widget button = LrButton(
    color: Color(0xFF6C8583),
    buttonText: "Log in",
    onPress: () {},
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email.addListener(listener);
    password.addListener(listener);
  }

  void listener() {
    setState(() {
      if (email.text != "" && password.text!="") {
        button = LrButton(
          color: kButtonColor,
          buttonText: "Log in",
          onPress: () async {
            dynamic result = await auth.signInWithEmailAndPassword(
                email.text, password.text);
          },
        );
      } else {
        button = LrButton(
          color: Color(0xFF6C8583),
          buttonText: "Log in",
          onPress: () {},
        );
      }
    });
  }

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
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1, child: IconTextField(icon: FontAwesomeIcons.at)),
                Expanded(
                    flex: 5,
                    child: CustomTextField(
                      labelTextField: "E-mail",
                      closeText: false,
                      textEditingController: email,
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
                    child: CustomTextField(
                      labelTextField: "Password",
                      closeText: true,
                      textEditingController: password,
                    )),
              ],
            ),
            kSizedBoxTwenty,
            LoginText(
              loginText: "Forget Password?",
              textStyle: kLoginPageTextStyle,
              onPress: () {},
            ),
            kSizedBoxTwenty,
            button,
            kSizedBoxTwenty,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginText(
                    loginText: "Not a member ?",
                    textStyle: kLoginPageTextStyle),
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
                  textStyle: kJoinNowTextStyle,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
