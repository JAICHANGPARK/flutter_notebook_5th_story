import 'package:flutter/material.dart';

class HabitMainPage extends StatefulWidget {
  @override
  _HabitMainPageState createState() => _HabitMainPageState();
}

class _HabitMainPageState extends State<HabitMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Expanded(
              flex: 10,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
