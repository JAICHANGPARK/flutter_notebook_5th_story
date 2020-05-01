import 'package:flutter/material.dart';

class SurveyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SurveyHomePage(),
    );
  }
}

class SurveyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.greenAccent[400],
                padding: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 72),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("zap", style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("255.90",style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          ),
                          Icon(Icons.monetization_on, color: Colors.white,),
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 64,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              margin: EdgeInsets.only(right: 16, top: 8 ,bottom: 8),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 64,
                              color: Colors.white,
                              margin: EdgeInsets.all(8),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 64,
                              color: Colors.white,
                              margin: EdgeInsets.all(8),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 3 - 64,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: SizedBox(
                            height: 240,
                            child: Container(

                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("Daily")),
      BottomNavigationBarItem(icon: Icon(Icons.payment), title: Text("Cash Back")),
      BottomNavigationBarItem(icon: Icon(Icons.check), title: Text("Earn")),
      BottomNavigationBarItem(icon: Icon(Icons.payment), title: Text("Cash Out")),
      BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("more"))
    ]);
  }
}
