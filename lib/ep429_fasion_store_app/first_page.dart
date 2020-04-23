import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
   return  Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "FEAR OF GOD",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: Colors.grey[300])),
                      padding: EdgeInsets.only(left: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search), border: InputBorder.none, hintText: "Search"),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(16),

              decoration: BoxDecoration(
                  color: Colors.brown,
                borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
