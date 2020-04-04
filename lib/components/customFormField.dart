import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class CustomFormField extends StatelessWidget {
  final String labelTextField;
  final bool closeText;
  final Function validatorFunction;
  final int maxLine;

  CustomFormField(
      {this.labelTextField,
      this.closeText,
      this.validatorFunction,
      this.maxLine});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: TextFormField(
        maxLines: maxLine,
        validator: validatorFunction,
        textAlign: TextAlign.left,
        obscureText: closeText,
        style: TextStyle(color: Colors.white, decoration: TextDecoration.none),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0, bottom: 15.0),
          hintText: labelTextField,
          hintStyle: TextStyle(
            color: Color(0xFF94AEAC),
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
