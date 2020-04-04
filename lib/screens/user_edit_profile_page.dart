import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/generalFormField.dart';
import 'package:word_and_memory/utils/constants.dart';

class EditUserProfile extends StatefulWidget {
  final String email;
  final String userName;
  EditUserProfile({this.email, this.userName});
  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userNameController;
  TextEditingController emailController;

  String email;
  String userName;

  @override
  void initState() {
    super.initState();
    email = widget.email;
    userName = widget.userName;
    userNameController = TextEditingController();
    emailController = TextEditingController();
    setState(() {
      userNameController.text = userName;
      emailController.text = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: kAppBarTextStyle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.times,
            color: Color(0xFF6C8583),
          ),
        ),
        actions: <Widget>[
          IconButton(
            //Kullanıcı alanları degistirdiginde kaydet e basınca tetiklenecek alan
            //Profile sayfasına yönlendirebilir kaydettikten sonra.
            onPressed: () {
              if (_formKey.currentState.validate()) {
             
              }
            },
            icon: Icon(
              Icons.check,
              color: Color(0xFF639a67),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                GeneralFormField(
                  text: "Name & Surname",
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return "Please don't leave this field empty.";
                    } else {
                      return null;
                    }
                  },
                  textEditingController: userNameController,
                ),
                kSizedBoxTwenty,
                GeneralFormField(
                  text: "E-mail",
                  validatorFunction: (value) {
                    if (value.isEmpty) {
                      return "Please don't leave this field empty.";
                    } else {
                      return null;
                    }
                  },
                  textEditingController: emailController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
