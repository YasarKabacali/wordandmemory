import 'package:flutter/material.dart';

class GeneralFormField extends StatelessWidget {
  final Function validatorFunction;
  final String text;
  final TextEditingController textEditingController;
  GeneralFormField(
      {this.text, this.validatorFunction, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController,
        validator: validatorFunction,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Color(0xFF6C6C6C)),
          border: InputBorder.none,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: buildBorderSide(),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:buildBorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: buildBorderSide(),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:buildBorderSide(),
          ),
        ));
  }

  BorderSide buildBorderSide() => BorderSide(color: Colors.orange[200]);
}
