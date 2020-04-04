import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

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
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Icon(cardIcon, color: kIconColor, size: iconSize)),
          Expanded(flex: 2, child: Text(cardText, style: kPackageDetailCardContentTextStyle,textAlign: TextAlign.left,)),
        ],
      ),
    );
  }
}
