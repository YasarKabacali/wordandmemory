import 'package:flutter/material.dart';
import 'package:word_and_memory/model/quiz_package.dart';
import 'package:word_and_memory/screens/add_quiz_package_page.dart';
import 'package:word_and_memory/screens/package_detail_page.dart';

import '../constants.dart';

List<QuizPackage> quizPackages;

class ListPackagePage extends StatefulWidget {
  @override
  _ListPackagePageState createState() => _ListPackagePageState();
}

class _ListPackagePageState extends State<ListPackagePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quizPackages = [
      QuizPackage(packageName: "Tourism words", visibility: Privacy.private),
      QuizPackage(packageName: "Fruits", visibility: Privacy.public),
      QuizPackage(
          packageName: "Restaurant sentences", visibility: Privacy.private)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Package List",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
          child: quizPackages == null
              ? Column()
              : ListView.builder(
                  itemCount: quizPackages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PackageDetailPage(packageName: quizPackages[index].packageName,)),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    quizPackages[index].packageName,
                                    style: kPackageListTextStyle,
                                  ),
                                  quizPackages[index].visibility ==
                                          Privacy.private
                                      ? Icon(
                                          Icons.lock,
                                          color: kPrimaryColor,
                                        )
                                      : Icon(
                                          Icons.lock_open,
                                          color: kPrimaryColor,
                                        ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
    );
  }
}
