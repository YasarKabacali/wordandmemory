import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/components/customQuizButton.dart';

class QuizTestPage extends StatefulWidget {
  @override
  _QuizTestPageState createState() => _QuizTestPageState();
}

class _QuizTestPageState extends State<QuizTestPage> {
  List<Widget> list = [];
  void deneme() {
    for (int i = 0; i < 15; i++) {
      list.add(Icon(
        Icons.cancel,
        color: Colors.redAccent,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    deneme();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kScaffoldBackgroundColor),
        title: Text(
          "Quiz",
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Elma",
                      style: kQuizQTextStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomQuizButton(
                      answer: "Apple",
                      onTap: () {},
                    ),
                    CustomQuizButton(
                      answer: "Orange",
                      onTap: () {},
                    ),
                    CustomQuizButton(
                      answer: "Watermelon",
                      onTap: () {},
                    ),
                    CustomQuizButton(
                      answer: "Cherry",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
