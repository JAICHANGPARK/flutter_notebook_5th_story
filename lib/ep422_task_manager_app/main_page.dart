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
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.purple[100]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
