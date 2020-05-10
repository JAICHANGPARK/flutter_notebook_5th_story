import 'package:flutter/material.dart';

class GameAppHome extends StatefulWidget {
  @override
  _GameAppHOmeState createState() => _GameAppHOmeState();
}

class _GameAppHOmeState extends State<GameAppHome> {
  int _tabIndex = 0;


  Widget buildTabWidget(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey[200], borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                        iconSize: 18,
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_basket),
                        onPressed: () {},
                        iconSize: 18,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          onPressed: (){
                            setState(() {
                              _tabIndex = 0;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.gamepad),
                          onPressed: (){
                            setState(() {
                              _tabIndex = 1;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.videogame_asset),
                          onPressed: (){
                            setState(() {
                              _tabIndex = 2;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.gesture),
                          onPressed: (){
                            setState(() {
                              _tabIndex = 3;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.apps),
                          onPressed: (){
                            setState(() {
                              _tabIndex = 4;
                            });
                          },
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            bottom: 120,
            child: Placeholder(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
