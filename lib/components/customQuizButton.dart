import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class CustomQuizButton extends StatelessWidget {
  final Function onTap;
  final String answer;

  CustomQuizButton({this.onTap, this.answer});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onTap,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
              topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
      textColor: Colors.white,
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(answer,style: TextStyle(color: kScaffoldBackgroundColor),),
          Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
