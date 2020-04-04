import 'package:flutter/material.dart';

class GeneralTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String text;
  GeneralTextField({this.text, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Color(0xFF6C6C6C)),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange[200]),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange[200]),
          ),
        ));
  }
}
