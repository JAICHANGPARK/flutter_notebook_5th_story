import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 47 207 135 2f cf 87
/// 39 61 75   27 3d 4b
///

Color surveyGreenColor = Color(0xff2FCF87);
Color surveySecondColor = Color(0xFF273D4B);

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
                color: surveyGreenColor,
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
                                    decoration:
                                        BoxDecoration(color: surveySecondColor, borderRadius: BorderRadius.circular(8)),
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
                                            color: surveyGreenColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: surveySecondColor,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(16),
                                              bottomLeft: Radius.circular(16),
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Hight Value",
                                                    style: TextStyle(color: Colors.white, fontSize: 24),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Text(
                                                    "Serveys that give the best mix of \ntime & money",
                                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.adjust,
                                                color: Colors.greenAccent,
                                              ),
                                            ],
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Text(
                                    "Partners",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, idx) {
                                    return Container(
                                      width: 120,
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(color: Colors.green,
                                      borderRadius: BorderRadius.circular(8)),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 24, right: 24),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "CashBack Brands",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                      ),
                                      Text("See all",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.greenAccent
                                      ),)
                                    ],
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, idx) {
                                    return Container(
                                      width: 120,
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Column(
                                        children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(

                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8),

                                              )
                                            ),
                                            child: Center(child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Uber",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                    )
                                                  )
                                                ]
                                              )
                                            ),),
                                          ),
                                        ),
                                          Expanded(
                                            flex: 2,
                                            child: Text("0.5%", style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: surveyGreenColor
                                            ),),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        height: 280,
                        width: double.infinity,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 23),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Scan for cash rewards",style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                    ),),
                                    SizedBox(height: 7,),
                                    Row(
                                      children: [
                                        Text("Location surveys",style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.blueGrey
                                        ),),
                                        Text("ACTIVE",style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: surveyGreenColor,
                                        ),),
                                        CircleAvatar(
                                          radius: 6,
                                          backgroundColor: surveyGreenColor,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          Expanded(
                            flex: 9,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all()
                              ),
                              child: Center(
                                child: Text("Place your maps"),
                              ),
                            ),
                          )
                          ],
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
