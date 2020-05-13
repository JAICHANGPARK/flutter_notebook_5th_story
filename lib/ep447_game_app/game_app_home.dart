import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameAppHome extends StatefulWidget {
  @override
  _GameAppHOmeState createState() => _GameAppHOmeState();
}

class _GameAppHOmeState extends State<GameAppHome> with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  PageController _pageController = PageController(viewportFraction: 0.8);
  AnimationController _animationController;
  Animation<double> _animation;
  int _tabIndex = 0;
  double angle = 0.0;


  EdgeInsetsGeometry _edgeInsetsGeometry = EdgeInsets.only(right: 16, bottom: 16, top: 16);

  List<String> userImage = [
    "https://cdn.pixabay.com/photo/2017/01/24/11/05/hahn-2005105__340.png",
    "https://cdn.pixabay.com/photo/2017/12/31/13/57/funny-3052397__340.jpg",
    "https://cdn.pixabay.com/photo/2017/08/05/12/08/hare-2583031__340.png",
    "https://cdn.pixabay.com/photo/2017/01/31/20/32/cartoon-2027047__340.png",
    "https://cdn.pixabay.com/photo/2020/04/26/12/14/white-tumor-5094960__340.jpg",
    "https://cdn.pixabay.com/photo/2017/01/24/11/05/hahn-2005105__340.png",
    "https://cdn.pixabay.com/photo/2017/12/31/13/57/funny-3052397__340.jpg",

  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _animation = Tween(begin: -0.2, end: 0.2).animate(_animationController);
    _animationController
      ..addListener(() {
        setState(() {
          angle = _animation.value;
        });
      });
    _animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        }
        setState(() {
          angle = 0.0;
        });
      });


//    _scrollController..addListener(() {
//      print(_scrollController.offset);
//    });
    _pageController.addListener(() {
      print(_pageController.page);
      if(_pageController.page == 1){
        _edgeInsetsGeometry = Ed
      }
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey[200], borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                        iconSize: 18,
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_basket),
                        onPressed: () {},
                        iconSize: 18,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _tabIndex == 0
                              ? Container(
                                  height: 72,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(colors: [
                                        Colors.red[200],
                                        Colors.red[400],
                                        Colors.red,
                                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                        angle: angle,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                )
                              : IconButton(
                                  icon: Icon(Icons.bookmark_border),
                                  onPressed: () {
                                    _animationController.forward();
                                    setState(() {
                                      _tabIndex = 0;
                                    });
                                  },
                                ),
                          _tabIndex == 1
                              ? Container(
                                  height: 72,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(colors: [
                                        Colors.red[200],
                                        Colors.red[400],
                                        Colors.red,
                                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                        angle: angle,
                                        child: Icon(
                                          Icons.gamepad,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                )
                              : IconButton(
                                  icon: Icon(Icons.gamepad),
                                  onPressed: () {
                                    _animationController.forward();
                                    setState(() {
                                      _tabIndex = 1;
                                    });
                                  },
                                ),
                          _tabIndex == 2
                              ? Container(
                                  height: 72,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(colors: [
                                        Colors.red[200],
                                        Colors.red[400],
                                        Colors.red,
                                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                        angle: angle,
                                        child: Icon(
                                          Icons.videogame_asset,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                )
                              : IconButton(
                                  icon: Icon(Icons.videogame_asset),
                                  onPressed: () {
                                    _animationController.forward();
                                    setState(() {
                                      _tabIndex = 2;
                                    });
                                  },
                                ),
                          _tabIndex == 3
                              ? Container(
                                  height: 72,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(colors: [
                                        Colors.red[200],
                                        Colors.red[400],
                                        Colors.red,
                                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                        angle: angle,
                                        child: Icon(
                                          Icons.gesture,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                )
                              : IconButton(
                                  icon: Icon(Icons.gesture),
                                  onPressed: () {
                                    _animationController.forward();
                                    setState(() {
                                      _tabIndex = 3;
                                    });
                                  },
                                ),
                          _tabIndex == 4
                              ? Container(
                                  height: 72,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                      gradient: LinearGradient(colors: [
                                        Colors.red[200],
                                        Colors.red[400],
                                        Colors.red,
                                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                        angle: angle,
                                        child: Icon(
                                          Icons.apps,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                      ),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                )
                              : IconButton(
                                  icon: Icon(Icons.apps),
                                  onPressed: () {
                                    _animationController.forward();
                                    setState(() {
                                      _tabIndex = 4;
                                    });
                                  },
                                ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 178,
            left: 0,
            right: 0,
            bottom: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recently popular",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "TOP GAMES",
                          style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 26),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        bottom: 0,
                        child: Container(
                          width: 84,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.ac_unit, size: 12,),
                                        Text("Global distribution"),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Container(height: 4,width: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black
                                    ),)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.ac_unit, size: 12,),
                                        Text("Multi-language"),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Container(height: 4,width: 4,
                                      decoration: BoxDecoration(
                                          color: Colors.black
                                      ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 84,
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 84,
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                              controller: _pageController,
                              itemCount: 2,
                              itemBuilder: (context, index){
                            return AnimatedContainer(
                                  width: 260,
                                  margin: _edgeInsetsGeometry,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [

                                      BoxShadow(
                                          color: Colors.deepOrange[100],
                                          offset: Offset(4,4),
                                        spreadRadius: 2,
                                        blurRadius: 4
                                      ),
                                      BoxShadow(
                                        color: Colors.blue[100],
                                        offset: Offset(-4,4),
                                          spreadRadius: 2,
                                          blurRadius: 4
                                      ),

                                    ]
                                  ), duration: Duration(milliseconds: 500),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 120,
                                      padding: EdgeInsets.all(24),

                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(.7),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(48),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Pokemon", style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),),
                                          Text("sword & shield", style: TextStyle(
                                            color: Colors.white,
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 64,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.deepOrange[300],
                                            Colors.deepOrange,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(48),
                                          bottomRight: Radius.circular(16),
                                        )
                                      ),
                                      child: Center(child: Text("\$116.99",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20

                                      ),)),
                                    ),
                                  ),
                                  
                                ],
                              ),
                                );
                          }),
//                          child: ListView.builder(
//                            controller: _scrollController,
//                              itemCount: 5,
//                              scrollDirection: Axis.horizontal,
//                              itemBuilder: (context, index) {
//                                return Container(
//                                  width: 240,
//                                  margin: EdgeInsets.all(16),
//                                  decoration: BoxDecoration(
//                                    color: Colors.pink,
//                                  ),
//                                );
//                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("POPULAR ANOTHER",style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection:
                        Axis.horizontal,
                        itemCount: userImage.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 64,
                            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(userImage[index]),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          );
                        }),
                    flex: 6,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
