import 'package:flutter/material.dart';


import '../constants.dart';

class IconTextField extends StatelessWidget {
  final IconData icon;
  IconTextField({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Icon(
        icon,
        color: Color(0xFFFFCDA3),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: kTextFieldBorderSide,
          right: kTextFieldBorderSide,
        ),
      ),
    );
  }
}
