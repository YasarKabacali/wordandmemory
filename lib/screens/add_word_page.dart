import 'package:flutter/material.dart';
import 'package:word_and_memory/components/LrButton.dart';
import 'package:word_and_memory/components/generalFormField.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddWordPage extends StatefulWidget {
  @override
  _AddWordPageState createState() => _AddWordPageState();
}

class _AddWordPageState extends State<AddWordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kScaffoldBackgroundColor),
        centerTitle: true,
        title: Text(
          "Add Word",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GeneralFormField(
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return 'Please enter en word';
                    }
                    return null;
                  },
                  text: "EN",
                ),
                kSizedBoxFifty,
                GeneralFormField(
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return 'Please enter tr word';
                    }
                    return null;
                  },
                  text: "TR",
                ),
                kSizedBoxFifty,
                GeneralFormField(
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return null;
                    }
                  },
                  text: "En Sentence",

                ),
                kSizedBoxFifty,
                GeneralFormField(
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return null;
                    }
                  },
                  text: "Tr Sentence",
                ),
                kSizedBoxFifty,
                LrButton(
                  buttonText: "SAVE",
                  onPress: () {
                    if (_formKey.currentState.validate()) {
                      Fluttertoast.showToast(
                          msg: "Your word has been saved.",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Color(0xFF737373),
                          textColor: Colors.white,
                          fontSize: 16.0);
                      _formKey.currentState.reset();
                    }
                  },
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Column makeRow({GeneralFormField generalFormField, String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: <Widget>[
            //Text alanında harf sayisinda kisitlamasi
            Expanded(
              child: generalFormField,
            ),
          ],
        ),
      ],
    );
  }
}
