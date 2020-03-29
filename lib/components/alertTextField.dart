import 'package:flutter/material.dart';
import 'package:word_and_memory/constants.dart';

class AlertTextField extends StatefulWidget {
  final String title;
  AlertTextField({this.title});

  @override
  _AlertTextFieldState createState() => _AlertTextFieldState();
}

class _AlertTextFieldState extends State<AlertTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(widget.title, style: kAddWordAlertTextStyle)),
          ],
        ),
        TextField(
          cursorColor: Colors.white,
          maxLines: 2,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: kAlertTextFieldBorderSide,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: kAlertTextFieldBorderSide,
              )),
        ),
      ],
    );
  }
}
