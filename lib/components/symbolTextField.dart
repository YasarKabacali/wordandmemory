import 'package:flutter/material.dart';

import '../constants.dart';

class SymbolTextField extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  SymbolTextField({this.text,this.textStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Text(text,style: textStyle,textAlign: TextAlign.center,),
      decoration: BoxDecoration(
        border: Border(
          bottom: kCustomTextFieldBorderSide,
          right: kCustomTextFieldBorderSide,
        ),
      ),
    );
  }
}