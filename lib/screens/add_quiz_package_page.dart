import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/customTextField.dart';
import 'package:word_and_memory/screens/list_package_page.dart';
import 'package:word_and_memory/utils/constants.dart';

enum Privacy { private, public }

class QuizPackagePage extends StatefulWidget {
  @override
  _QuizPackagePageState createState() => _QuizPackagePageState();
}

class _QuizPackagePageState extends State<QuizPackagePage> {
  Privacy privacy = Privacy.public;

  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String emptyMessage = "";
  //TODO bos mesaj girilmemesi icin kontrol yap kankam
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Creating Packages",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Package Name",
                style: kPackagePageTextStyle,
                textAlign: TextAlign.center,
              ),
              CustomTextField(
                textEditingController: myController,
                closeText: false,
              ),
              kSizedBoxTwenty,
              Text(emptyMessage,
                  style: TextStyle(fontSize: 14.0, color: Colors.red)),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Visibility",
                      style: kPackagePageVisibilityTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Radio(
                          focusColor: kPrimaryColor,
                          value: Privacy.private,
                          groupValue: privacy,
                          onChanged: (Privacy value) {
                            setState(() {
                              privacy = value;
                            });
                          },
                        ),
                        Text(
                          "Private",
                          style: kPackagePageRadioTextStyle,
                        ),
                        Radio(
                          focusColor: kPrimaryColor,
                          value: Privacy.public,
                          groupValue: privacy,
                          onChanged: (Privacy value) {
                            setState(() {
                              privacy = value;
                            });
                          },
                        ),
                        Text(
                          "Public",
                          style: kPackagePageRadioTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              kSizedBoxFifty,
              LrButton(
                buttonText: "CREATE",
                onPress: () {
                  Fluttertoast.showToast(
                      msg: "Your package has been created.",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Color(0xFF737373),
                      textColor: Colors.white,
                      fontSize: 16.0);
                  setState(() {
                    myController.text="";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
