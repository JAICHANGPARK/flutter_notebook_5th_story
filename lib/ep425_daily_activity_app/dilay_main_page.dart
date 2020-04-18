import 'package:flutter/material.dart';

class DailyMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Chip(label: Text("add"),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


