import 'package:flutter/material.dart';


class LoadBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context)=>BookingMainPage(),
      },
    );
  }
}
class BookingMainPage extends StatefulWidget {
  @override
  _BookingMainPageState createState() => _BookingMainPageState();
}
class _BookingMainPageState extends State<BookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("clases".toUpperCase(), style: TextStyle(
          color: Colors.black
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: (){},
          )
        ],
        elevation: 0,
      ),
      drawer: Drawer(),
    );
  }
}

