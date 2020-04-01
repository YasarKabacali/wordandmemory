import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/components/customAppBar.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/services/auth.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CustomAppBar(
            title: "Profile",
          ),
        ),
        Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: <Widget>[
                  buildCard("ozan batuhan kurucu", FontAwesomeIcons.user, 50.0),
                  buildCard("ozanbatuhankurucu@gmail.com",
                      FontAwesomeIcons.mailBulk, 30.0),
                  buildCard("536 561 21 46", FontAwesomeIcons.mobile, 30.0),
                  kSizedBoxFifty,
                  buildProfileCard("Change Password", FontAwesomeIcons.lock,
                      Icons.keyboard_arrow_right, () {}),
                  buildProfileCard(
                    "Sign out",
                    FontAwesomeIcons.signOutAlt,
                    Icons.keyboard_arrow_right,
                    () async {
                      await _auth.signOut();
                    },
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Card buildCard(String text, IconData leadingIcon, double iconSize) {
    return Card(
      color: kProfilePageCardColor,
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: kPrimaryColor,
          size: iconSize,
        ),
        title: Text(
          text,
          style: kProfileCardTextStyle,
        ),
      ),
    );
  }

  GestureDetector buildProfileCard(
    String text,
    IconData leadingIcon,
    IconData trailingIcon,
    Function router,
  ) {
    return GestureDetector(
      onTap: router,
      child: Card(
        color: kProfilePageCardColor,
        child: ListTile(
          leading: Icon(
            leadingIcon,
            color: kPrimaryColor,
          ),
          trailing: Icon(
            trailingIcon,
            color: kPrimaryColor,
          ),
          title: Text(
            text,
            style: kProfileCardTextStyle,
          ),
        ),
      ),
    );
  }
}
