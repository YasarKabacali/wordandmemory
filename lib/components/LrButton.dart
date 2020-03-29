import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';
class LrButton extends StatelessWidget {
  final String buttonText;
  final Function onPress;
    LrButton({this.buttonText,this.onPress});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        onPressed: onPress,
        child: Text(buttonText,style: TextStyle(color: kScaffoldBackgroundColor),),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        color: kButtonColor,
      ),
    );
  }
}
