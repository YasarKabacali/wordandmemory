import 'package:flutter/material.dart';
import 'package:word_and_memory/components/swipperFlipCard.dart';
import 'package:word_and_memory/models/word.dart';
import 'package:word_and_memory/screens/add_word_page.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flip_card/flip_card.dart';

class PackageDetailPage extends StatefulWidget {
  final String packageName;
  PackageDetailPage({this.packageName});
  @override
  _PackageDetailPageState createState() => _PackageDetailPageState();
}

class _PackageDetailPageState extends State<PackageDetailPage> {
  List<Word> words = [
    Word(
        "elma",
        "apple",
        "bu benim elmam bu benim elmam bu benim elmam bu enim elmam bu benim elmam enim elmam bu benim elmambenim elmam",
        "this is my apple this is my apple this is my apple this is my apple this is my apple this is my ",
        90.0),
    Word("sandalye", "chair", "sandalyede oturuyorum",
        "Im sitting on the chair", 80.0),
    Word("gitmek", "go", "okula gideceğim", "Im gonna go to the school.", 60),
    Word("bilmek", "know", "okula gideceğim", "Im gonna go to the school.", 55),
    Word("türkçe", "turkish", "Türkçe benim doğal dilim.",
        "It is my native language.", 42),
    Word("cut", "kesmek", "Bu ekmeği keseceğim.", "I will cut this bread", 32),
    Word("götos", "asshole", "Sen bir götün tekisin.",
        "You are a fucking asshole.", 31),
  ];

  String packageName;
  @override
  void initState() {
    super.initState();
    packageName = widget.packageName;
  }

  void choiceAction(String choice) {
    if (choice == "addword") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddWordPage()),
      );
    } //paketi sildiginde yapilacak olan islem
    else if (choice == "delete") {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kScaffoldBackgroundColor),
        centerTitle: true,
        title: Text(
          "Package Detail",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
        actions: <Widget>[
          new PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  child: Text("Add word"),
                  value: "addword",
                ),
                PopupMenuItem<String>(
                  child: Text("Delete package"),
                  value: "delete",
                ),
              ];
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("ozan batuhan kurucu",
                            style: kPackageDetailTextStyle),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width: 5.0),
                            Text("10", style: kPackageDetailTextStyle),
                            SizedBox(width: 5.0),
                            Icon(
                              Icons.thumb_down,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width: 5.0),
                            Text("32", style: kPackageDetailTextStyle),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Package Success Rate: %90",
                            style: kPackageDetailTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: SwipperFlipCard(
                            word: words[index].en,
                            sentence: words[index].enSentence,
                            successRate: words[index].successRate,
                            deleteCard: () {
                              setState(() {});
                            },
                          ),
                          back: SwipperFlipCard(
                            word: words[index].tr,
                            sentence: words[index].trSentence,
                            successRate: words[index].successRate,
                            deleteCard: () {
                              setState(() {});
                            },
                          ),
                        );
                      },
                      itemCount: words.length,
                      viewportFraction: 0.7,
                      scale: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
