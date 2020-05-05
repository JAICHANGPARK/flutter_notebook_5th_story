import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 8,
          right: 8,
          bottom: 0,
          top: 8,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(160),
                  bottomLeft: Radius.circular(24),
                )),
          ),
        ),
        Positioned(
          left: 0,
          top: 16,
          bottom: 8,
          right: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "IELTS".toUpperCase(),
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.network(
                    "https://assets-ouch.icons8.com/thumb/853/0f654408-ed3c-4fea-812f-35185d116b98.png"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
