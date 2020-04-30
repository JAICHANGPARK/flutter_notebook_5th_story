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
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("Daily")),
      BottomNavigationBarItem(icon: Icon(Icons.payment), title: Text("Cash Back")),
      BottomNavigationBarItem(icon: Icon(Icons.check), title: Text("Earn")),
      BottomNavigationBarItem(icon: Icon(Icons.payment), title: Text("Cash Out")),
      BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("more"))
    ]);
  }
}
