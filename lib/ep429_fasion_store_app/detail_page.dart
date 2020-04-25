import 'package:flutter/material.dart';

class ShopDetailPage extends StatefulWidget {
  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.brown
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "FG",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.card_travel),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
