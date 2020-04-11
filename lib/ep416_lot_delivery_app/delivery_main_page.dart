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
        backgroundColor: Colors.blueGrey[50],
        body: Column(
          children: [
            SafeArea(
              child: Container(
                height: 200,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Color(0xff0E2F41)),
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
            Container(
              height: MediaQuery.of(context).size.height / 1.45,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    height: 120,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.format_list_bulleted, color: Colors.white, size: 18),
                                Text(
                                  "ORDERED",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(color: Colors.blue[200], borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.format_list_bulleted, color: Colors.white, size: 18),
                                Text(
                                  "SHIPPED",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration:
                                BoxDecoration(color: Colors.blueGrey[300], borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.format_list_bulleted, color: Colors.white, size: 18),
                                Text(
                                  "OUT FOR DELIVERY",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(color: Color(0xff0E2F41), borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.format_list_bulleted, color: Colors.white, size: 18),
                                Text(
                                  "DELIVERED",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius:
                                    BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bookshelf", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),),
                                Text("Arriving Today",style: TextStyle(
                                  fontSize: 16
                                ),),
                                Divider(),
                                Container(
                                  height: 72,
                                  color: Colors.grey,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Column(
                                          children: [

                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add_location,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Rockville, MD 20850"),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today, size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Apr 9, 2020"),
                                    ),
                                    SizedBox(width: 12,),
                                    Icon(Icons.timer, size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("7:33am"),
                                    ),
                                  ],
                                ),
                                Divider(height: 8,),
                                Spacer(),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Track Package", style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.arrow_forward, size: 16,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )
                ],
              ),
            )
          ],
        )
//      CustomScrollView(
//        slivers: [
//          SliverAppBar(
//              backgroundColor: Color(0xff0E2F41),
//              expandedHeight: 200.0,
//              flexibleSpace: FlexibleSpaceBar(
//                background: SafeArea(
//                  child:
//
//                  Container(
//                    height: 200,
//                    padding: EdgeInsets.all(16),
//                    decoration: BoxDecoration(color: Color(0xff0E2F41)),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Row(
//                          children: [
//                            Text(
//                              "Track",
//                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 45),
//                            ),
//                            SizedBox(
//                              width: 16,
//                            ),
//                            Icon(
//                              Icons.inbox,
//                              color: Colors.orange[100],
//                              size: 48,
//                            )
//                          ],
//                        ),
//                        SizedBox(height: 8),
//                        Text(
//                          "Enter a tracking number to start",
//                          style: TextStyle(fontSize: 18, color: Colors.white),
//                        ),
//                        Text(
//                          "tracking your package",
//                          style: TextStyle(
//                            fontSize: 18,
//                            color: Colors.white,
//                          ),
//                        ),
//                        SizedBox(height: 16),
//                        Container(
//                          height: 48,
//                          padding: EdgeInsets.symmetric(horizontal: 12),
//                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                          child: TextField(
//                            decoration: InputDecoration(
//                              border: InputBorder.none,
//                              hintText: "Tracking Number",
//                              icon: Icon(Icons.search),
//                            ),
//                          ),
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//              floating: false,
//              pinned: true,
//              snap: false,
//              actions: <Widget>[
//                IconButton(
//                  icon: const Icon(Icons.add_circle),
//                  tooltip: 'Add new entry',
//                  onPressed: () {
//                    /* ... */
//                  },
//                ),
//              ]),
//
//// 14 47 65
////          SliverList(
////            delegate: SliverChildBuilderDelegate((context, index) {
////              return ListTile(
////                title: Text("Hello $index"),
////              );
////            }, childCount: 30),
////          )
//          Container(
//            height: MediaQuery.of(context).size.height / 2,
//            child: Placeholder(),
//          ),
//          Container(
//            height: MediaQuery.of(context).size.height / 2,
//            child: Placeholder(),
//          ),
//        ],
//      ),
        );
  }
}
