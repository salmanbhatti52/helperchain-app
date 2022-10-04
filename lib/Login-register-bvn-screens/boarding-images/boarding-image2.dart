import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class BoardingImage2 extends StatefulWidget {
  const BoardingImage2({Key? key}) : super(key: key);

  @override
  State<BoardingImage2> createState() => _BoardingImage2State();
}

class _BoardingImage2State extends State<BoardingImage2> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [

        Image.asset('assets/login2.png',height: h,width: w,fit: BoxFit.fill,),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: h * 0.09),
              SvgPicture.asset('assets/boardinglogowhite.svg', height: h * 0.15),
              SizedBox(height: h * 0.05),
              Row(
                children: [
                  HeadingText(
                    text: 'Join a big family',
                    textAlign: TextAlign.left,
                    textColor: KWhite,
                    size: 23,
                    textWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: h * 0.01),
              Row(
                children: [
                  HeadingText(
                    text: 'WHERE GOOD THINGS\nALWAYS HAPPENS',
                    //textAlign: TextAlign.left,
                    textColor: KGreen,
                    size: 23,
                    textWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: h * 0.062),
              DescriptionText(
                text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos',
                textColor: KWhite,
                textAlign: TextAlign.left,
                textWeight: FontWeight.w400,
              ),
            ],
          ),
        )
      ],
    );
  }
}
