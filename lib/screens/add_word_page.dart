import 'package:flutter/material.dart';
import 'package:word_and_memory/components/addWordText.dart';
import 'package:word_and_memory/components/customTextField.dart';
import 'package:word_and_memory/components/symbolTextField.dart';
import 'package:word_and_memory/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class AddWordPage extends StatefulWidget {
  @override
  _AddWordPageState createState() => _AddWordPageState();
}

class _AddWordPageState extends State<AddWordPage> {
  _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "SENTENCE",
        style: AlertStyle(
            backgroundColor: kScaffoldBackgroundColor,
            titleStyle: kAlertTitleTextStyle),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: <Widget>[
              TextField(
                cursorColor: Colors.white,
                maxLines: 3,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: kAlertTextFieldBorderSide,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: kAlertTextFieldBorderSide,
                  )
                ),
              ),
            ],
          ),
        ),
        buttons: [
          DialogButton(
            color: kPrimaryColor,
            onPressed: () => Navigator.pop(context),
            child: Text(
              "ADD",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                //Text alanında harf sayisinda kisitlamasi olacak mi
                Expanded(
                  flex: 1,
                  child: SymbolTextField(
                    text: "TR",
                    textStyle: kSymbolTextStyle,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: CustomTextField(
                    showText: false,
                  ),
                ),
              ],
            ),
            kSizedBoxFifty,
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SymbolTextField(
                    text: "EN",
                    textStyle: kSymbolTextStyle,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: CustomTextField(
                    showText: false,
                  ),
                ),
              ],
            ),
            kSizedBoxFifty,
            AddWordText(
              addWordText: "Make your own sentence with the word",
              textStyle: kAddWordPageTextStyle,
              onPress: () => _onAlertWithCustomContentPressed(context),
            ),
          ],
        ),
      )),
    );
  }
}
