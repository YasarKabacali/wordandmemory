import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class GlobalPage extends StatefulWidget {
  @override
  _GlobalPageState createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Global Page",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
