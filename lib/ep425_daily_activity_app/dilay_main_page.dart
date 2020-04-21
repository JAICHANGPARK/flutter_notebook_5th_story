import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class DailyMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 5e 49 c5
    return Theme(
      data: ThemeData(
        backgroundColor: Color(0xFF5E49C5),
        scaffoldBackgroundColor: Color(0xFF5E49C5),
        accentColor: Color(0xFF5E49C5),
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Good morning",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Dreamwalker",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          color: Theme.of(context).cardColor,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.thumb_up,
                                  color: Colors.orange,
                                  size: 42,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "High-five!",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "you can finishi over 80% of your activities eaxh day.",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Text("ok"),
                                    backgroundColor: Colors.orange,
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
              Container(
                height: MediaQuery.of(context).size.height / 3.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Completion\nTracker",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "You completed ",
                                    style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16)),
                                TextSpan(
                                    text: "2",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                                TextSpan(
                                    text: "of", style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16)),
                                TextSpan(
                                    text: "4\n",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                                TextSpan(
                                    text: "activities so far!",
                                    style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16))
                              ]))
                            ],
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                          infoProperties: InfoProperties(
                              mainLabelStyle:
                                  TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                          customWidths: CustomSliderWidths(progressBarWidth: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's activitys",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Container(
                      height: 24,
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "add",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,),
                height: MediaQuery.of(context).size.height / 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.tealAccent,
                            ),
                            Container(
                              height: 100,
                              width: 3,
                              decoration: BoxDecoration(
                                color: Colors.tealAccent
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Placeholder(),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}














