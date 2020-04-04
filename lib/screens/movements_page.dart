import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class MovementsPage extends StatefulWidget {
  @override
  _MovementsPageState createState() => _MovementsPageState();
}

class _MovementsPageState extends State<MovementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Movements",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
          body: Column(
        children: <Widget>[Container()],
      ),
    );
  }
}
