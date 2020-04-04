import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/kullanilmayanlar/reusableCard.dart';
import 'package:word_and_memory/screens/package_list_page.dart';
import 'package:word_and_memory/screens/package_create_page.dart';
import 'package:word_and_memory/utils/constants.dart';

class MainPage extends StatelessWidget {
  //final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Word and Memory",
            style: TextStyle(color: kScaffoldBackgroundColor)),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                cardIcon: FontAwesomeIcons.globeAmericas,
                cardText: "Quiz Browser",
                onPress: () {},
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardIcon: FontAwesomeIcons.plusCircle,
                cardText: "Create a quiz package",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreatePackagePage()),
                  );
                },
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardIcon: FontAwesomeIcons.list,
                cardText: "See quiz packages",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPackagePage()),
                  );
                },
              ),
            ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "SENTENCE",
        style: AlertStyle(
            backgroundColor: kScaffoldBackgroundColor,
            titleStyle: kAlertTitleTextStyle),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AlertTextField(
                title: "En Sentence",
              ),
              AlertTextField(
                title: "Tr Sentence",
              ),
            ],
          ),
        ),
        buttons: [
          DialogButton(
            color: kPrimaryColor,
            onPressed: () => Navigator.pop(context),
            child: Text(
              "ADD",
              style: TextStyle(
                  color: kScaffoldBackgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]).show();
  } */
