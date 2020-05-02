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
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.greenAccent[400],
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "zap",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "255.90",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 52,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Day",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 52,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Day",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            height: 64,
                            decoration:
                                BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
                            margin: EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 4,
                                  bottom: 4,
                                  right: 0,
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 58),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Tap Days 3+",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            "to Claim \$0.03 instantly",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 52,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey[700], borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Day",
                                          style: TextStyle(fontSize: 15, color: Colors.white),
                                        ),
                                        Text(
                                          "3+",
                                          style:
                                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 3 - 80,
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          child: SizedBox(
                            height: 220,
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 24),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Best Match",
                                                style: TextStyle(fontSize: 24),
                                              ),
                                              Text(
                                                "Most likely quanlify surveys",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.apps,
                                            size: 48,
                                            color: Colors.greenAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      /// 47 207 135 2f cf 87
                                      /// 39 61 75   27 3d 4b
                                      decoration: BoxDecoration(
                                        
                                      ),

                                    ),
                                  )
                                ],
                              ),
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
