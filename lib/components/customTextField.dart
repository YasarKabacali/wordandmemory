import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String labelTextField;
  final bool closeText;
  final TextEditingController textEditingController;

  CustomTextField(
      {this.labelTextField, this.closeText, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: TextField(
        controller: textEditingController,
        textAlign: TextAlign.left,
        obscureText: closeText,
        style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0, bottom: 15.0),
          hintText: labelTextField,
          hintStyle: TextStyle(
            color: Color(0xFF6C6C6C),
          ),
          border: InputBorder.none,
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: kCustomTextFieldBorderSide,
        ),
      ),
    );
  }
}
