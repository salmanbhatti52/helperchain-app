import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Variables/globalVariables.dart';

class MyCircularPercent extends StatefulWidget {
  @override
  _MyCircularPercentState createState() => _MyCircularPercentState();
}
class _MyCircularPercentState extends State<MyCircularPercent> {

  double percent = 0;
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(microseconds:1500),(_){
      setState(() {
        percent+=1;
        if(percent == 38){
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: KLightGray,
        shape: BoxShape.circle
        ),


        child: CircularPercentIndicator(
          linearGradient: LinearGradient(
            stops: [
              0.0,
              1.0
            ],
              colors: [
                  KGreen,
                  KBlue
              ]
          ),
          radius: 30.0,
          lineWidth: 10.0,
          animation: true,
          percent: percent/100,

          center: Text(
            percent.toString() + "%",
            style: TextStyle(
                fontSize: 12,
                color: KBlack),
          ),
          backgroundColor: KLightGray,
        ),
    );
  }
}