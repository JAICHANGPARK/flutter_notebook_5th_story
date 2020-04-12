import 'package:flutter/material.dart';


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
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
