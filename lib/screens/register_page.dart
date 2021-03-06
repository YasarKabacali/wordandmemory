import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/customTextField.dart';
import 'package:word_and_memory/components/iconTextField.dart';
import 'package:word_and_memory/services/auth.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/utils/loading.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}


class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final AuthService auth = AuthService();
  bool loading = false;
  String error = "";
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                "Register",
                style: kAppBarTextStyle,
              ),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      kSizedBoxFifty,
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child:
                                  IconTextField(icon: FontAwesomeIcons.user)),
                          Expanded(
                              flex: 5,
                              child: CustomTextField(
                                labelTextField: "Name & Surname",
                                closeText: false,
                                textEditingController: fullname,
                              )),
                        ],
                      ),
                      kSizedBoxFifty,
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: IconTextField(icon: FontAwesomeIcons.at)),
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
                              flex: 1,
                              child:
                                  IconTextField(icon: FontAwesomeIcons.lock)),
                          Expanded(
                              flex: 5,
                              child: CustomTextField(
                                labelTextField: "Password",
                                closeText: true,
                                textEditingController: password,
                              )),
                        ],
                      ),
                     kSizedBoxTen,
                      Text(error,style:kRegisterErrorTextStyle),
                       kSizedBoxTen,
                      LrButton(
                        buttonText: "Register",
                        onPress: () async {
                          setState(() {
                            loading = true;
                          });
                          dynamic result =
                              await auth.registerWithEmailAndPassword(
                                  email.text, password.text, fullname.text);
                          if (result == null) {
                            setState(() {
                              loading = false;
                              error = "Registration failed.";
                            });
                          }
                        },
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
