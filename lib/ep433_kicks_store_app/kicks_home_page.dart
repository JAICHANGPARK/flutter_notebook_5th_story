import 'package:flutter/material.dart';


class KickShopHomePage extends StatefulWidget {
  @override
  _KickShopHomePageState createState() => _KickShopHomePageState();
}

class _KickShopHomePageState extends State<KickShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.home), onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search), onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border), onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shop), onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home), onPressed: () {},
              ),

            ],
          ),
        ),
      ),
    );
  }
}
