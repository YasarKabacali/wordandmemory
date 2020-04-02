import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/customAppBar.dart';
import 'package:word_and_memory/utils/constants.dart';

class GlobalPage extends StatefulWidget {
  @override
  _GlobalPageState createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: CustomAppBar(
              title: "Word and Memory",
            )),
        Expanded(
          flex: 9,
          child: Center(
            child: Container(),
          ),
        ),
      ],
    );
  }
}
