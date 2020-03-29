import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/models/word.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

//navigation bar her sayfada olsun.
//arama butonu
//filtrele butonu navbarın sağına,
class ListCard extends StatefulWidget {
  final Word word;

  ListCard({this.word});

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.word.en,
        style: kListTitleTextStyle,
      ),
      subtitle: Text(
        widget.word.tr,
        style: kListSubtitleTextStyle,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: kPrimaryColor,
      ),
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: <Widget>[
                    CircularPercentIndicator(
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
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    contentCard(widget.word.enSentence,
                        kListElementDetailCardTextStyle),
                    Divider(
                      thickness: 1.0,
                    ),
                    contentCard(
                        widget.word.trSentence, kListElementDetailCardTextStyle)
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Text contentCard(String content, TextStyle textStyle) {
    return Text(
      content,
      style: textStyle,
    );
  }
}
