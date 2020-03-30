import 'package:flutter/material.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeSpeaker(),
    );
  }
}
class SmartHomeSpeaker extends StatefulWidget {
  @override
  _SmartHomeSpeakerState createState() => _SmartHomeSpeakerState();
}

class _SmartHomeSpeakerState extends State<SmartHomeSpeaker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/05/15/14/31/amplifier-768536__340.jpg"),
                fit: BoxFit.cover,
              )
            ),),
          )
        ],
      ),
    );
  }
}

