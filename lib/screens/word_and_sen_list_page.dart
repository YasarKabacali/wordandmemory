import 'package:flutter/material.dart';
import 'package:word_and_memory/components/expansionTileCard.dart';
import 'package:word_and_memory/model/word.dart';
class WordAndSenListPage extends StatefulWidget {
  @override
  _WordAndSenListPageState createState() => _WordAndSenListPageState();
}

class _WordAndSenListPageState extends State<WordAndSenListPage> {
  List<Word> words = [
    Word(
        "elma",
        "apple",
        "bu benim elmam bu benim elmam bu benim elmam bu enim elmam bu benim elmam enim elmam bu benim elmambenim elmam",
        "this is my apple this is my apple this is my apple this is my apple this is my apple this is my "),
    Word("sandalye", "chair", "sandalyede oturuyorum",
        "Im sitting on the chair"),
    Word("gitmek", "go", "okula gideceğim", "Im gonna go to the school."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
          itemCount: words.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Dismissible(
              background: Container(color: Colors.red,),
              key: ValueKey(index),
              onDismissed: (direction){
                setState(() {
                  words.removeAt(index);
                });
              },
                          child: Column(
                children: <Widget>[
                  ExpansionTileCard(
                      tr: words[index].tr,
                      en: words[index].en,
                      trSentence: words[index].trSentence,
                      enSentence: words[index].enSentence),
                  Divider(
                    height: 5.0,
                    color: Colors.black,
                    thickness: 2.0,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
