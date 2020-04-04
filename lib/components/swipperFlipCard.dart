import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SwipperFlipCard extends StatefulWidget {
  final String word;
  final String sentence;
  final double successRate;

  SwipperFlipCard({this.word, this.sentence, this.successRate});

  @override
  _SwipperFlipCardState createState() => _SwipperFlipCardState();
}

class _SwipperFlipCardState extends State<SwipperFlipCard> {
  void choiceAction(String choice) {
    //Kelimeyi düzenleme sayfasina yönlendiriyor
    if (choice == "editword") {

    }// kelimeyi sileceginde yapacagi islem 
    else if (choice == "deleteword") {}
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new PopupMenuButton<String>(
                        onSelected: choiceAction,
                        icon: Icon(
                          FontAwesomeIcons.ellipsisH,
                          color: Color(0xFF6C6C6C),
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem<String>(
                              child: Text("Edit word"),
                              value: "editword",
                            ),
                            PopupMenuItem<String>(
                              child: Text("Delete word "),
                              value: "deleteword",
                            ),
                          ];
                        },
                      ),
                    ],
                  ),
                  Text(
                    widget.word.toUpperCase(),
                    style: kPackageDetailCardTitleTextStyle,
                  ),
                  Text(
                    widget.sentence,
                    style: kPackageDetailCardContentTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  LinearPercentIndicator(
                    trailing: Text("%" + widget.successRate.toString(),
                        style: TextStyle(fontSize: 14.0, color: Color(0xFF6C6C6C))),
                    lineHeight: 14.0,
                    percent: widget.successRate / 100,
                    backgroundColor: kScaffoldBackgroundColor,
                    progressColor: Color(0xFF639a67),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
