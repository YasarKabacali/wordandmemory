import 'package:flutter/material.dart';
import 'package:word_and_memory/constants.dart';

class LoginTextField extends StatelessWidget {

  final String labelTextField;

  LoginTextField({this.labelTextField});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: labelTextField,
          labelStyle: TextStyle(
            color: Color(0xFF94AEAC),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: kTextFieldBorderSide,
        ),
      ),
    );
  }
}