import 'package:flutter/material.dart';

class AudioBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 20,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}

