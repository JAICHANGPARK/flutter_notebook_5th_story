import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep419_boarding_pass_app/ticket_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingTicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Colors.teal,
                              size: 48,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Boarding Pass",
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: TicketWidget(

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    "ADD TO WALLET",
                    style: GoogleFonts.poppins(color: Colors.pink[50], fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
