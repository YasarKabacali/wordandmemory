import 'package:flutter/material.dart';
import '../constants.dart';

const double iconSize = 40.0;

class ReusableCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  final Function onPress;
  ReusableCard({this.cardIcon, this.cardText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(cardIcon, color: kIconColor, size: iconSize),
            kSizedBoxTwenty,
            Text(cardText, style: kMainPageTextStyle),
          ],
        ),
      ),
    );
  }
}
