import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/customAppBar.dart';
import 'package:word_and_memory/models/quiz_package.dart';
import 'package:word_and_memory/screens/quiz_test_page.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/screens/package_create_page.dart';

List<QuizPackage> quizPackages;

class ListPackagePage extends StatefulWidget {
  @override
  _ListPackagePageState createState() => _ListPackagePageState();
}

class _ListPackagePageState extends State<ListPackagePage> {
  @override
  void initState() {
    super.initState();

    quizPackages = [
      QuizPackage(packageName: "word and memory", visibility: Privacy.private),
      QuizPackage(packageName: "Fruits", visibility: Privacy.public),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Quick Quiz",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
              itemCount: quizPackages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Card(
                      color: kPackageListCardColor,
                      child: ListTile(
                        title: Text(
                          quizPackages[index].packageName,
                          style: kPackageListTextStyle,
                        ),
                        trailing: GestureDetector(
                          child: Icon(
                            FontAwesomeIcons.play,
                            color: Color(0xFF639a67),
                            size: 14,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizTestPage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
