import 'package:flutter/material.dart';

class ELearningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                  ),
                  Text("Select a"),
                  Text("Plan To Learn"),

                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
