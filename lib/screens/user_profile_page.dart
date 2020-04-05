import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:word_and_memory/models/user.dart';
import 'package:word_and_memory/screens/package_list_with_detail_page.dart';
import 'package:word_and_memory/screens/user_edit_profile_page.dart';
import 'package:word_and_memory/utils/constants.dart';
import 'package:word_and_memory/services/auth.dart';
import 'package:word_and_memory/utils/loading.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    final u = Provider.of<User>(context);
    return StreamBuilder<UserData>(
      stream: UserRepository(uid: u.uid).userData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserData data = snapshot.data;
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                "Profile",
                style: TextStyle(color: kScaffoldBackgroundColor),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    buildUserCard(data.name, data.email,
                        FontAwesomeIcons.user, Icons.email, 30.0, 20.0),
                    kSizedBoxFifty,
                    buildProfileCard("Packages", FontAwesomeIcons.box,
                        Icons.keyboard_arrow_right, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPackageWithDetail()),
                      );
                    }, 20.0),
                    buildProfileCard("Edit Profile", Icons.edit,
                        Icons.keyboard_arrow_right, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditUserProfile(
                                  email: data.email,
                                  userName: data.name,
                                )),
                      );
                    }, 20.0),
                    buildProfileCard(
                        "Change Password",
                        FontAwesomeIcons.lock,
                        Icons.keyboard_arrow_right,
                        () {},
                        20.0),
                    buildProfileCard("Logout", FontAwesomeIcons.signOutAlt,
                        Icons.keyboard_arrow_right, () async {
                      await _auth.signOut();
                    }, 20.0),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Loading();
        }
      },
    );
  }

  Card buildUserCard(
      String userName,
      String userEmail,
      IconData userNameIcon,
      IconData userEmailIcon,
      double userNameIconSize,
      double userEmailIconSize) {
    return Card(
        color: kProfilePageCardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  userNameIcon,
                  color: kPrimaryColor,
                  size: userNameIconSize,
                ),
                title: Text(
                  userName,
                  style: kProfileCardTextStyle,
                ),
              ),
              ListTile(
                leading: Icon(
                  userEmailIcon,
                  color: kPrimaryColor,
                  size: userEmailIconSize,
                ),
                title: Text(userEmail, style: kProfileCardTextStyle),
              ),
            ],
          ),
        ));
  }

  GestureDetector buildProfileCard(String text, IconData leadingIcon,
      IconData trailingIcon, Function router, double iconSize) {
    return GestureDetector(
      onTap: router,
      child: Card(
        color: kProfilePageCardColor,
        child: ListTile(
          leading: Icon(
            leadingIcon,
            color: kPrimaryColor,
            size: iconSize,
          ),
          trailing: Icon(
            trailingIcon,
            color: kPrimaryColor,
            size: iconSize,
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
