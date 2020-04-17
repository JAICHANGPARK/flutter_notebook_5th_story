import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskManagerMainPage(),
    );
  }
}

class TaskManagerMainPage extends StatefulWidget {
  @override
  _TaskManagerMainPageState createState() => _TaskManagerMainPageState();
}

class _TaskManagerMainPageState extends State<TaskManagerMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {},
                        iconSize: 38,
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                        iconSize: 38,
                        color: Colors.grey,
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        onPressed: () {},
                        iconSize: 38,
                        color: Colors.grey,
                      )
                    ],
                  )),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.purple[100]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4'))),
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Hello, Sandy",
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "You have 5 task today!",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 3.7,
              child: Container(
                height: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 64,
                        color: Colors.black,
                        margin: EdgeInsets.only(right: 16),
                      );
                    }),
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              top: MediaQuery.of(context).size.height / 2.4,
              bottom: 84,
              child: Container(

                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tasks", style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("April, 2020",style: TextStyle(
                            fontSize: 28,
                            color: Colors.grey
                          ),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: ListView.builder(
                        itemBuilder: (context, index){
                          return Container(
                            height: 100,
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Placeholder(),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Placeholder(),
                                )
                              ],
                            ),
                          );
                        },


                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
