import 'package:flutter/material.dart';

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskManagerMainPage(),
    );
  }
}

class TaskManagerMainPage extends StatefulWidget {
  @override
  _TaskManagerMainPageState createState() => _TaskManagerMainPageState();
}

class _TaskManagerMainPageState extends State<TaskManagerMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 84,
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






























