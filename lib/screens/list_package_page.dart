import 'package:flutter/material.dart';
import 'package:word_and_memory/components/customAppBar.dart';
import 'package:word_and_memory/models/quiz_package.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/screens/add_quiz_package_page.dart';
import 'package:word_and_memory/screens/package_detail_page.dart';

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
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: CustomAppBar(
              title: "Package List",
            )),
        Expanded(
          flex: 9,
          child: ListView.builder(
              itemCount: quizPackages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PackageDetailPage(
                                packageName: quizPackages[index].packageName,
                              )),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Card(
                        color: kPackageListCardColor,
                        child: ListTile(
                          title: Text(
                            quizPackages[index].packageName,
                            style: kPackageListTextStyle,
                          ),
                          trailing:
                              quizPackages[index].visibility == Privacy.private
                                  ? Icon(
                                      Icons.lock,
                                      color: kPrimaryColor,
                                    )
                                  : Icon(
                                      Icons.lock_open,
                                      color: kPrimaryColor,
                                    ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
