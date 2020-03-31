import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  CustomAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Center(
        child: Text(
          title,
          style: kAppBarTextStyle,
        ),
      ),
    );
  }
}
