import 'package:flutter/cupertino.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyLinearPercent extends StatefulWidget {
  const MyLinearPercent({Key? key}) : super(key: key);

  @override
  State<MyLinearPercent> createState() => _MyLinearPercentState();
}

class _MyLinearPercentState extends State<MyLinearPercent> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return LinearPercentIndicator(
      lineHeight: 5,
      percent: 0.6,

      animation: true,
      animationDuration: 1300,
      backgroundColor: KLightGray,
      progressColor: KGreen,
      linearStrokeCap: LinearStrokeCap.roundAll,
      barRadius: Radius.circular(30),

    );;
  }
}
