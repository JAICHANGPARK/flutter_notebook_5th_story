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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.clear, color: Colors.teal,
                            size: 48,), onPressed: () {  },
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Placeholder(),
                    )
                  ],
                ),
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
