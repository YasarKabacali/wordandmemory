import 'package:flutter/material.dart';
import 'package:word_and_memory/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFFCDA3),
        scaffoldBackgroundColor: Color(0xFF425C5A),
      ),
      home: LoginPage(),
    );
  }
}
