import 'package:flutter/material.dart';
import 'package:word_and_memory/components/customAppBar.dart';

class MovementsPage extends StatefulWidget {
  @override
  _MovementsPageState createState() => _MovementsPageState();
}

class _MovementsPageState extends State<MovementsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex:1,
                  child: CustomAppBar(
            title: "Movements",
          ),
        ),
        Expanded(flex:9,child: Container(),)
      ],
    );
  }
}