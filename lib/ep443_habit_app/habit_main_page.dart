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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Popular habits"),
                  ),
                  Expanded(
                    flex: 6,
                    child: Placeholder(),
                  )
                ],
              ),
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
