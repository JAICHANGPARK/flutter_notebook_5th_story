import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep433_kicks_store_app/kicks_main_page.dart';
import 'package:page_transition/page_transition.dart';

class KickShopHomePage extends StatefulWidget {
  @override
  _KickShopHomePageState createState() => _KickShopHomePageState();
}

class _KickShopHomePageState extends State<KickShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: Theme.of(context).cardColor,
                child: Container(
                  height: 260,

                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 2,
                  color: Theme.of(context).cardColor,
                  child: Container(
                    height: 260,

                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 2,
                  color: Theme.of(context).cardColor,
                  child: Container(
                    height: 260,

                  )
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                    child: KicksMainPage(),
                    type: PageTransitionType.downToUp,
                  ));
                },
              ),
              CircleAvatar()
            ],
          ),
        ),
      ),
    );
  }
}
