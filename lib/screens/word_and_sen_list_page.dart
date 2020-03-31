import 'package:flutter/material.dart';
import 'package:word_and_memory/components/listCard.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/models/word.dart';

//TODONavigation bar her sayfada olsun.
//TODOarama butonu
//TODOfiltrele butonu navbarın sağına,
class WordAndSenListPage extends StatefulWidget {
  @override
  _WordAndSenListPageState createState() => _WordAndSenListPageState();
}

class _WordAndSenListPageState extends State<WordAndSenListPage> {
  List<Word> words;
  @override
  void initState() {
    super.initState();
    words = [
      Word(
          "elma",
          "apple",
          "bu benim elmam bu benim elmam bu benim elmam bu enim elmam bu benim elmam enim elmam bu benim elmambenim elmam",
          "this is my apple this is my apple this is my apple this is my apple this is my apple this is my "),
      Word("sandalye", "chair", "sandalyede oturuyorum",
          "Im sitting on the chair"),
      Word("gitmek", "go", "okula gideceğim", "Im gonna go to the school."),
      Word("bilmek", "know", "okula gideceğim", "Im gonna go to the school."),
      Word("türkçe", "turkish", "Türkçe benim doğal dilim.",
          "It is my native language."),
      Word("CUSAASF", "AFFDGDXXsdsS", "okula gideceğim",
          "Im gonna go to the school."),
      Word("göt", "asshole", "Sen bir götün tekisin.",
          "You are a fucking asshole."),
      Word("asshDGDFGSFSDFAFASFaSFASF", "gSDGDGDHJFGJFGJFGFDGDF",
          "Sen bir götün tekisin.", "You are a fucking asshole."),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Word List",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: new ListView.builder(
            itemCount: words.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return ListCard(
                word: words[index],
              );
            }),
      ),
    );
  }
}
