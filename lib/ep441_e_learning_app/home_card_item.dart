import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCardItem extends StatelessWidget {
  final Color cardColor;
  final BorderRadiusGeometry borderRadiusGeometry;
  final String title;
  final String img;
  final List<double> topPosition;  // left right top bottom
  final List<double> bottomPosition;

  HomeCardItem({@required this.cardColor,
    @required this.borderRadiusGeometry,
    @required this.title,
    @required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 8,
          right: 8,
          top: 8,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(color: cardColor, borderRadius: borderRadiusGeometry),
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
                    title.toUpperCase(),
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.network(img),
              ),
            ],
          ),
        )
      ],
    );
  }
}
