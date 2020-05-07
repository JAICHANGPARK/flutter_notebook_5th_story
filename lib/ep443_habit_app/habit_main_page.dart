import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HabitMainPage extends StatefulWidget {
  @override
  _HabitMainPageState createState() => _HabitMainPageState();
}

class _HabitMainPageState extends State<HabitMainPage> {
  PageController _pageController = PageController();



  void _listener(){
    print(_pageController.page.toString());
  }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

//    _pageController.addListener(() {
////      print(_pageController.page);
//    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular habits",
                            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Settings",
                            style: GoogleFonts.montserrat(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, idx) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black, width: 0.5),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(Icons.add),
                                          iconSize: 48,
                                          onPressed: (){},
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
                                      child: Center(
                                        child: Text("Wash hands",style: GoogleFonts.montserrat(
                                          letterSpacing: 2,
                                          fontSize: 16
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
//                onPageChanged: (i){
//                  print("onPageChanged : $i");
//                },

                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
