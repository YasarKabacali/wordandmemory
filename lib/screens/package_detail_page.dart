import 'package:flutter/material.dart';

import '../constants.dart';

class PackageDetailPage extends StatefulWidget {
  final String packageName;
  PackageDetailPage({this.packageName});
  @override
  _PackageDetailPageState createState() => _PackageDetailPageState();
}

class _PackageDetailPageState extends State<PackageDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.packageName,
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
            child: Column(
              
        children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(widget.packageName),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(children: <Widget>[
                Text("deneme"),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    decoration: BoxDecoration(
                    
                    ),
                  ),
                ),
              ],),
            ),
        ],
      ),
          )),
    );
  }
}
