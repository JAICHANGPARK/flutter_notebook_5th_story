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
           title: Text("Sliver AppBar"),
            expandedHeight: 300,
            flexibleSpace: Placeholder(),
            floating: true,
            snap: true,
          ),
          SliverList(delegate: null,)
        ],

      ),
    );
  }
}
