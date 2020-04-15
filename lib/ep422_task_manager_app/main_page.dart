import 'package:flutter/cupertino.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 32),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.purple[100]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(8)),
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 32,),
                    Text("Hello, Sandy"),
                    SizedBox(height: 16,),
                    Text("You have 5 task today!"),
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
