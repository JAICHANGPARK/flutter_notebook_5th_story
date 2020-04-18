import 'package:flutter/material.dart';

class DailyMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 5e 49 c5
    return Theme(
      data: ThemeData(
        backgroundColor: Color(0xFF5E49C5),
        scaffoldBackgroundColor: Color(0xFF5E49C5),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Placeholder(),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Placeholder(),
              ),
              Row(
                children: [
                  Text("Today's activitys"),
                  Container(
                    height: 24,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.deepOrange)
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

















