import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternotebook5th/generated/i18n.dart';
import 'package:google_fonts/google_fonts.dart';

class Seat {
  final bool isAvailable;

  Seat({this.isAvailable});
}

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
  Color appColor = Color(0xff3959b4); // 57 89 180 dec to hex 39 59 b4
  List<Seat> _item;
  int _row = 10;
  int _column = 14;
  List<List<Seat>> _tmp;

  @override
  void initState() {
    // TODO: implement initState
    Random random = Random();
    //TODO: One Dimension Array
    _item = List<Seat>.generate(10, (index) => Seat(isAvailable: random.nextBool()));
    _item.forEach((element) {
      print(element.isAvailable);
    });

    //TODO : 2 Dimension Array
    _tmp =
        List.generate(_column, (index) => List<Seat>.generate(_row, (index) => Seat(isAvailable: random.nextBool())));
    _tmp.forEach((element) {
      element.forEach((e) {
        print(e.isAvailable);
      });
    });

    super.initState();
  }

  List<Widget> _buildSeatTitle() {
    return <Widget>[
      Expanded(
        child: Container(),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "A",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "B",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "C",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "D",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "E",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "F",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "G",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "H",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "I",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
            child: Text(
              "J",
              style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(),
      ),
    ];
  }

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
                  color: appColor,
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
                      flex: 28,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: _buildSeatTitle(),
                            ),
                          ),
                          Expanded(
                            flex: 15,
                            child: ListView.builder(
                                itemCount: _tmp.length,
                                itemBuilder: (context, index) {
                                  List<Seat> _seatItems = _tmp[index];
                                  int idx = 30 + index;
                                  return Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          idx.toString(),
                                          style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
                                        )),
                                        Expanded(
                                          child: _seatItems[0].isAvailable
                                              ? Container(
                                            margin: EdgeInsets.all(3),
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(6),
                                                  ),
                                                )
                                              : Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.white),
                                                      borderRadius: BorderRadius.circular(6)),
                                                ),
                                        ),
                                        Expanded(
                                          child: _seatItems[1].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[2].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Expanded(
                                          child: _seatItems[3].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[4].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[5].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[6].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child:Container()
                                        ),
                                        Expanded(
                                          child: _seatItems[7].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[8].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: _seatItems[9].isAvailable
                                              ? Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                          )
                                              : Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Colors.indigoAccent, borderRadius: BorderRadius.circular(6)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Choosen",
                                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(6)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Available",
                                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration:
                                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Blocked",
                                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 24, top: 8),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: MaterialButton(
                                  elevation: 8,
                                  color: appColor,
                                  onPressed: () {},
                                  child: Text(
                                    "Confirm",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 4, child: Container()),
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
                padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.card_giftcard),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.style),
                      color: Colors.indigoAccent,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person_outline),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
