import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:word_and_memory/screens/package_create_page.dart';
import 'package:word_and_memory/screens/package_list_page.dart';
import 'package:word_and_memory/screens/user_profile_page.dart';
import 'package:word_and_memory/utils/constants.dart';

import 'global_page.dart';
import 'movements_page.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> _widgetOptions = <Widget>[
    GlobalPage(),
    ListPackagePage(),
    CreatePackagePage(),
    MovementsPage(),
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
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0x80425C5A),
        ),
        child: BottomNavigationBar(
          elevation: 8.0,
          unselectedIconTheme: IconThemeData(color: Color(0xFFD3D3D3)),
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
                FontAwesomeIcons.list,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                size: 32.0,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
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
