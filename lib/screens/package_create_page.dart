import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/generalTextField.dart';
import 'package:word_and_memory/utils/constants.dart';

enum Privacy { private, public }

class CreatePackagePage extends StatefulWidget {
  @override
  _CreatePackagePageState createState() => _CreatePackagePageState();
}

class _CreatePackagePageState extends State<CreatePackagePage> {
  Privacy privacy = Privacy.public;
  String emptyMessage = "";
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myController.addListener(resetEmptyMessage);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void resetEmptyMessage() {
    setState(() {
      emptyMessage = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Create Package",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GeneralTextField(text: "Package Name",textEditingController: myController,),
              kSizedBoxTwenty,
              Text(emptyMessage,
                  style: TextStyle(fontSize: 16.0, color: Colors.red)),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Visibility",
                      style: kPackagePageVisibilityTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        buildRadio(privacy, (Privacy value) {
                          setState(() {
                            privacy = value;
                          });
                        }, "Private", Privacy.private),
                        buildRadio(privacy, (Privacy value) {
                          setState(() {
                            privacy = value;
                          });
                        }, "Public", Privacy.public),
                      ],
                    ),
                  ),
                ],
              ),
              kSizedBoxFifty,
              LrButton(
                buttonText: "CREATE",
                onPress: () {
                  if (myController.text == "") {
                    setState(() {
                      emptyMessage = "Please do not leave this field empty.";
                    });
                  } else {
                    print(myController.text);
                    setState(() {
                      emptyMessage = "";
                      myController.text = "";
                    });
                    Fluttertoast.showToast(
                        msg: "Your package has been created.",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Color(0xFF737373),
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRadio(
      Privacy privacy, Function function, String radioName, Privacy type) {
    return Row(
      children: <Widget>[
        Radio(
          activeColor: Color(0xFF6C6C6C),
          value: type,
          groupValue: privacy,
          onChanged: function,
        ),
        Text(
          radioName,
          style: kPackagePageRadioTextStyle,
        ),
      ],
    );
  }
}


