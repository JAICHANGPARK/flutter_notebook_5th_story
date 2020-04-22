import 'package:flutter/cupertino.dart';
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
        scrollDirection: Axis.vertical,
        children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(flex: 3,child:Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(child: Text("FEAR OF GOD",style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),),),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.grey[300])
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search)
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                  Expanded(flex: 5,child: Placeholder(),),
                  Expanded(flex: 5,child: Placeholder(),),
                ],
              ),
            ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          )
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
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("FG", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              IconButton(icon: Icon(Icons.favorite_border),
              onPressed: (){},),
              IconButton(icon: Icon(Icons.card_travel),
                onPressed: (){},),
              IconButton(icon: Icon(Icons.person_outline),
                onPressed: (){},),

            ],
          ),
        ),
      ),
    );
  }
}

































