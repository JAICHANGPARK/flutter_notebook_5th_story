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
              expandedHeight: 200.0,
//              flexibleSpace: FlexibleSpaceBar(
//                title: Text("Hello"),
//                centerTitle: true,
//              ),
              flexibleSpace: Container(
                height: 200,
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Track",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32
                        ),)
                      ],
                    )
                  ],
                ),
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
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text("Hello $index"),
              );
            }, childCount: 30),
          )
        ],
      ),
    );
  }
}
