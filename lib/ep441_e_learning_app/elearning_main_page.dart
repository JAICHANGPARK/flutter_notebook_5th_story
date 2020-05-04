import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep441_e_learning_app/e_l_home_page.dart';

class ELearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: ELearningHomePage(),
    );
  }
}
