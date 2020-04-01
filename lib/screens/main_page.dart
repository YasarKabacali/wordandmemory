import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/reusableCard.dart';
import 'package:word_and_memory/screens/add_quiz_package_page.dart';
import 'package:word_and_memory/screens/list_package_page.dart';
import 'package:word_and_memory/utils/constants.dart';

class MainPage extends StatelessWidget {
<<<<<<< HEAD

  final AuthService _auth=AuthService();
=======
  
>>>>>>> e6752448fdf767841556b6e599d03580f1fe8341

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
                    MaterialPageRoute(builder: (context) => QuizPackagePage()),
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
