import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.addOval(Rect.fromCircle(
      center: Offset(0.0, size.height / 2),
      radius: 24.0,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(0.0, size.height / 2),
      radius: 24.0,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}