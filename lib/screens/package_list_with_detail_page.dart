import 'package:flutter/material.dart';
import 'package:word_and_memory/models/quiz_package.dart';
import 'package:word_and_memory/screens/package_detail_page.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/screens/package_create_page.dart';

List<QuizPackage> quizPackages;

class ListPackageWithDetail extends StatefulWidget {
  @override
  _ListPackageWithDetailState createState() => _ListPackageWithDetailState();
}

class _ListPackageWithDetailState extends State<ListPackageWithDetail> {
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
        iconTheme: IconThemeData(color: kScaffoldBackgroundColor),
        centerTitle: true,
        title: Text(
          "Packages",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
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
                                Icons.keyboard_arrow_right,
                                color: kPrimaryColor,
                                size: 20.0,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PackageDetailPage(
                                          packageName:
                                              quizPackages[index].packageName)),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
