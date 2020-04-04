import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_and_memory/models/user.dart';
import 'package:word_and_memory/screens/add_word_page.dart';
import 'package:word_and_memory/screens/login_page.dart';
import 'package:word_and_memory/screens/main_navigation_bottom_page.dart';
import 'package:word_and_memory/screens/user_edit_profile_page.dart';
import 'package:word_and_memory/services/auth.dart';
import 'package:word_and_memory/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Word and Memory',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
        ),
        home: PageRouter(),
      ),
    );
  }
}

class PageRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return LoginPage();
    } else {
      return BottomNavigationPage();
    }
  }
}
