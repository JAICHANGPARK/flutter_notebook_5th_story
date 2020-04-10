import 'package:flutter/cupertino.dart';
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
              backgroundColor: Colors.indigoAccent,
              expandedHeight: 200.0,
//              flexibleSpace: FlexibleSpaceBar(
//                title: Text("Hello"),
//                centerTitle: true,
//              ),
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.indigoAccent),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Track",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 45),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.inbox,
                              color: Colors.orange[100],
                              size: 48,
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Enter a tracking number to start",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          "tracking your package",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Tracking Number",
                              icon: Icon(Icons.search),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
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
