import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){

              return Container(
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
