import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/screens/list_package_page.dart';
import 'package:word_and_memory/screens/test_page.dart';
import 'package:word_and_memory/screens/user_profile_page.dart';
import 'package:word_and_memory/utils/constants.dart';

import 'add_quiz_package_page.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> _widgetOptions = <Widget>[
    QuizPackagePage(),
    TestPage(),
    ListPackagePage(),
    UserProfilePage(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0x80425C5A),
        ),
        child: BottomNavigationBar(
          elevation: 8.0,
          unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
          selectedIconTheme: IconThemeData(color: kPrimaryColor),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.redo,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.list,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.user,
              ),
              title: Text(""),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
