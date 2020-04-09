import 'package:flutter/material.dart';

class DeliveryMainPage extends StatefulWidget {
  @override
  _DeliveryMainPageState createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
//              title: Text("Sliver AppBar"),
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Hello"),
              ),
              floating: false,
              pinned: true,
              snap: false,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {
                    /* ... */
                  },
                ),
              ]),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, builder){
                  return ListTile(title: Text("Hello"),);
                }
                ,childCount: 10
            ),
          )
        ],
      ),
    );
  }
}




















