import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:word_and_memory/constants.dart';

class ExpansionTileCard extends StatelessWidget {
  final String tr;
  final String en;
  final String trSentence;
  final String enSentence;
  ExpansionTileCard({this.tr, this.en, this.trSentence, this.enSentence});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black,
        size: 30.0,
      ),
      title: Text(
        en,
        style: kListTitleTextStyle,
      ),
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 4.0,
                animation: true,
                percent: 60 / 100,
                center: new Text(
                  "60.0%",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.green,
                backgroundColor: Colors.red,
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  contentCard(tr),
                  Divider(
                    color: kExpansionTileContentColor,
                  ),
                  contentCard(enSentence),
                  Divider(
                    color: kExpansionTileContentColor,
                  ),
                  contentCard(trSentence)
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Düzenle", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ],
    );
  }

  Text contentCard(String content) {
    return Text(
      content,
      style: kContentTextTextSyle,
    );
  }
}
