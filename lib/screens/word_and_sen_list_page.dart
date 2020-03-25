import 'package:flutter/material.dart';
import 'package:word_and_memory/model/word.dart';

//TODO percent_indicator paketi ile yuzde dilimi gosterilecek.
class WordAndSenListPage extends StatefulWidget {
  @override
  _WordAndSenListPageState createState() => _WordAndSenListPageState();
}

class _WordAndSenListPageState extends State<WordAndSenListPage> {
  List<Word> words = [
    Word("elma", "apple", "bu benim elmam", "this is my apple"),
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
            return ExpansionTile(
              title: Text(words[index].en),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text("Buraya indicator gelecek"),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(words[index].tr),
                          Text(words[index].sentenceEn),
                          Text(words[index].sentenceTr),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }
}
