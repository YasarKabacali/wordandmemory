import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/reusableCard.dart';
import 'package:word_and_memory/constants.dart';
import 'package:word_and_memory/screens/word_and_sen_list_page.dart';
import 'add_word_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainPageScaffoldColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.plusCircle,
                      cardText: "Create a word",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddWordPage()),
                        );
                      },
                      edgeInsets: EdgeInsets.only(bottom: 8.0, right: 8.0),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.list,
                      cardText: "See the list",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WordAndSenListPage()),
                        );
                      },
                      edgeInsets: EdgeInsets.only(bottom: 8.0, left: 8.0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.redo,
                      cardText: "Test your memory",
                      onPress: () {},
                      edgeInsets: EdgeInsets.only(top: 8.0, right: 8.0),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardIcon: FontAwesomeIcons.exclamationCircle,
                      cardText: "Wrong words",
                      onPress: () {},
                      edgeInsets: EdgeInsets.only(top: 8.0, left: 8.0),
                    ),
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
