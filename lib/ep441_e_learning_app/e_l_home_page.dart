import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ELearningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              right: 0,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 3),
                    child: Text(
                      "Select a",
                      style: GoogleFonts.montserrat(fontSize: 22),
                    ),
                  ),
                  Text(
                    "Plan To Learn",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                            ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
