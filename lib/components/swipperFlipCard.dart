import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SwipperFlipCard extends StatelessWidget {
  final String word;
  final String sentence;
  final double successRate;

  SwipperFlipCard({this.word, this.sentence, this.successRate});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0x59425C5A),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    word.toUpperCase(),
                    style: TextStyle(fontSize: 22.0, color: kPrimaryColor),
                  ),
                  Text(
                    sentence,
                    style: kMainPageTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[],
                  ),
                  LinearPercentIndicator(
                    trailing: Text("%" + successRate.toString(),
                        style: TextStyle(fontSize: 16.0, color: kPrimaryColor)),
                    lineHeight: 14.0,
                    percent: successRate / 100,
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
