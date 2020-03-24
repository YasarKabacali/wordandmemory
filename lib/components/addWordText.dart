import 'package:flutter/material.dart';
class AddWordText extends StatelessWidget {
  final String addWordText;
  final Function onPress;
  final TextStyle textStyle;
  AddWordText({this.addWordText, this.onPress,this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(
        addWordText,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}