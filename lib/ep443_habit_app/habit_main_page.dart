import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HabitMainPage extends StatefulWidget {
  @override
  _HabitMainPageState createState() => _HabitMainPageState();
}

class _HabitMainPageState extends State<HabitMainPage> with TickerProviderStateMixin {
  PageController _pageController = PageController();
  TabController _tabController;
  Animation<double> _animation;
  AnimationController _animationController;

  void _listener() {
    print(_pageController.page.toString());
  }

  Color bgColor = Colors.red[600];
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 7,
    )..addListener(() {
        print("_tabController.indexIsChanging: ${_tabController.indexIsChanging}");
        print("_tabController.index:  ${_tabController.index}");
        _animationController.forward();
      });
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    _animation = Tween(begin: 1.0, end: 0.2).animate(_animationController);

    _animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          switch (_tabController.index) {
            case 0:
              bgColor = Colors.red[600];
              break;
            case 1:
              bgColor = Colors.green[600];
              break;
            case 2:
              bgColor = Colors.blue[600];
              break;
            case 3:
              bgColor = Colors.pink[600];
              break;
            case 4:
              bgColor = Colors.orange[600];
              break;

          }
          setState(() {
            _animationController.reverse();
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });
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
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
                                      child: Center(
                                        child: Text(
                                          "Wash hands",
                                          style: GoogleFonts.montserrat(letterSpacing: 2, fontSize: 16),
                                        ),
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
                child: Container(
                  decoration: BoxDecoration(color: bgColor.withOpacity(_animation.value), border: Border.all()),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Your week"), Text("Edit")],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: false,
                          tabs: [
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Mon",
                            ),
                            Tab(
                              text: "Sun",
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(border: Border.all()),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                          height: 0,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add a new habit",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                                iconSize: 38,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Divider(
                          height: 0,
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
