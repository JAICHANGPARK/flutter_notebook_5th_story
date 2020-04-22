import 'package:flutter/material.dart';

class FashionStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionMainPage(),
    );
  }
}

class FashionMainPage extends StatefulWidget {
  @override
  _FasionMainPageState createState() => _FasionMainPageState();
}

class _FasionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(

          height: 84,
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24)
            )
          ),
        ),
      ),
    );
  }
}

































