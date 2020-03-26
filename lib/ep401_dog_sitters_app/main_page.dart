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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 8,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Location")),
        ],
      ),
    );
  }
}
