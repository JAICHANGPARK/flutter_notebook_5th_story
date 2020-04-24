import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Looks", style: TextStyle(
              fontSize: 18,

            ),),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(color: Colors.blue),
                      margin: EdgeInsets.only(right: 16),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}






















