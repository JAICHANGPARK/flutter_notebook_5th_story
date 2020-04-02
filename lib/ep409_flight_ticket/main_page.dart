import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightTicketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicketPage(),
    );
  }
}

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 8,
              right: 24,
              top: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_left),
                  Spacer(),
                  Text(
                    "Your Ticket",
                    style: GoogleFonts.montserrat(fontSize: 20),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 48,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, top: 16),
                        child: Text(
                          "Select Seats",
                          style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 24,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Align(
                        child: MaterialButton(onPressed: () {

                        },
                          child: Text("Confirm", style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white,

                          ),),

                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Placeholder()
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                child: Row(
                  children: <Widget>[],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
