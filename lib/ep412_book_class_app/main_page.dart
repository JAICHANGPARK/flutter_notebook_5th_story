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
    return Scaffold();
  }
}

