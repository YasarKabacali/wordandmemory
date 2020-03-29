import 'package:flutter/material.dart';
import 'package:word_and_memory/constants.dart';

class CustomTextField extends StatefulWidget {
  final String labelTextField;
  final bool closeText;

  CustomTextField({this.labelTextField, this.closeText});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: TextField(
        textAlign: TextAlign.left,
        obscureText: widget.closeText,
        style: TextStyle(color: Colors.white, decoration: TextDecoration.none),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0, bottom: 15.0),
          hintText: widget.labelTextField,
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
