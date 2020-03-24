import 'package:flutter/material.dart';


class LoginText extends StatelessWidget {
  final String loginText;
  final Function onPress;
  final TextStyle textStyle;
  LoginText({this.loginText, this.onPress,this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(
        loginText,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}