import 'package:flutter/material.dart';
import 'package:word_and_memory/components/listCard.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/models/word.dart';

//TODOarama butonu
//TODOfiltrele butonu navbarın sağına,
class WordAndSenListPage extends StatefulWidget {
  @override
  _WordAndSenListPageState createState() => _WordAndSenListPageState();
}

class _WordAndSenListPageState extends State<WordAndSenListPage> {
  
  
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
            itemCount: 2,
            itemBuilder: (BuildContext ctxt, int index) {
              return ListCard(
                word: Word("alma","sd","asd","asd",22.0),
              );
            }),
      ),
    );
  }
}
