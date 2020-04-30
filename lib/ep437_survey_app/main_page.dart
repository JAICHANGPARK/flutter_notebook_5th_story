
import 'package:flutter/material.dart';

class SurveyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SurveyHomePage(),
    );
  }
}

class SurveyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
        )
      ]),
    );
  }
}

