import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/utils/constants.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                buildCard("ozan batuhan kurucu", FontAwesomeIcons.user, 50.0),
                buildCard("ozanbatuhankurucu@gmail.com",
                    FontAwesomeIcons.mailBulk, 30.0),
                buildCard("536 561 21 46", FontAwesomeIcons.mobile, 30.0),
              ],
            )),
            kSizedBoxThirty,
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: <Widget>[
                  buildProfileCard("Change Password", FontAwesomeIcons.lock,
                      Icons.keyboard_arrow_right, () {}),
                  buildProfileCard("Sign out", FontAwesomeIcons.signOutAlt,
                      Icons.keyboard_arrow_right, () {}),
                ],
              ),
            ),
          ],
        ),
      ),
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
