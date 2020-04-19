import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: Column(
              children: [
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
                                      Text("High-five!",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Text("you can finishi over 80% of your activities eaxh day.",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),)
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: FloatingActionButton(
                                      onPressed: (){},
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
                  height: MediaQuery.of(context).size.height / 3,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Placeholder(
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Placeholder(),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Today's activitys"),
                    Container(
                      height: 24,
                      width: 48,
                      decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.deepOrange)),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
