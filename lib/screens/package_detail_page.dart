import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

class PackageDetailPage extends StatefulWidget {
  final String packageName;
  PackageDetailPage({this.packageName});
  @override
  _PackageDetailPageState createState() => _PackageDetailPageState();
}

class _PackageDetailPageState extends State<PackageDetailPage> {
  String packageName;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    packageName = widget.packageName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kScaffoldBackgroundColor),
        centerTitle: true,
        title: Text(
          "deneme",
          style: TextStyle(color: kScaffoldBackgroundColor),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("ozan batuhan kurucu",
                            style: TextStyle(
                                color: kPrimaryColor, fontSize: 18.0)),
                        Text("31.03.2020",
                            style: TextStyle(
                                color: kPrimaryColor, fontSize: 18.0)),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Expanded(
                      child: Card(
                        color: Color(0xBF425C5A),
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width:5.0),
                            Text("10",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 18.0)),
                                     SizedBox(width:5.0),
                            Icon(
                              Icons.thumb_down,
                              color: kPrimaryColor,
                            ),
                             SizedBox(width:5.0),
                            Text("32",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 18.0)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("see all",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18.0,
                                decoration: TextDecoration.underline)),
                      ),
                    ],
                  ),
                  SizedBox(height:10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Başarı oranı : %90",
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 18.0)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
