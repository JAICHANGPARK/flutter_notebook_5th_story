import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final bool cornerRounded;

  TicketWidget(this.width, this.height, this.child, this.cornerRounded);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: width,
        height: height,
        child: child,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: cornerRounded ? BorderRadius.circular(24.0) : BorderRadius.circular(0)),
      ),
    );
  }
}

