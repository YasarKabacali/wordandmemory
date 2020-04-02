import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/customTextField.dart';
import 'package:word_and_memory/utils/constants.dart';

class EditUserProfile extends StatefulWidget {
  final String email;
  final String userName;
  EditUserProfile({this.email, this.userName});
  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  String email;
  String userName;
  TextEditingController emailController;
  TextEditingController userNameController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = widget.email;
    userName = widget.userName;
    emailController = TextEditingController();
    userNameController = TextEditingController();
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
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: Color(0xFF639a67),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: <Widget>[
              CustomTextField(
                labelTextField: "Name & Surname",
                closeText: false,
                textEditingController: userNameController,
              ),
              CustomTextField(
                labelTextField: "E-mail",
                closeText: false,
                textEditingController: emailController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
