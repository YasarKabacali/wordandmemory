import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/reusableCard.dart';
//TODO Ekrana cumle eklemeyi nasıl monte edelim diye sor
//Bir ekran uzerinde kotu gorunebilir cunku
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            makeSpace(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.plusCircle,
                      cardText: "Create a word",
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.list,
                      cardText: "See the list",
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            makeSpace(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.redo,
                      cardText: "Test your memory",
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.exclamationCircle,
                      cardText: "Wrong words",
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            makeSpace(),
          ],
        ),
      ),
    );
  }

  Expanded makeSpace() {
    return Expanded(
            child: Container(),
          );
  }
}
