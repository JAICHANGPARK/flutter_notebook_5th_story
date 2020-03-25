import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DogSittersApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DogSitterMainPage(),
    );
  }
}

class DogSitterMainPage extends StatefulWidget {
  @override
  _DogSitterMainPageState createState() => _DogSitterMainPageState();
}

class _DogSitterMainPageState extends State<DogSitterMainPage> {
//20 59 62
  Color appColor = Color(0xff143b3e);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(24), bottomLeft: Radius.circular(24))),
            ),
          ),
          Expanded(
            flex: 4,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
