import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class BoardingImage5 extends StatefulWidget {
  const BoardingImage5({Key? key}) : super(key: key);

  @override
  State<BoardingImage5> createState() => _BoardingImage5State();
}

class _BoardingImage5State extends State<BoardingImage5> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          'assets/login5.png',
          height: h,
          width: w,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: h * 0.09),
              SvgPicture.asset('assets/boardinglogowhite.svg',
                  height: h * 0.15),
              SizedBox(height: h * 0.05),
              Row(
                children: [
                  HeadingText(
                    text: 'A Coorperative',
                    textAlign: Alignment.centerLeft,
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
                    text: 'WITH A DIFFERENCE',
                    textAlign: Alignment.centerLeft,
                    textColor: KGreen,
                    size: 23,
                    textWeight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height: h * 0.1),
              DescriptionText(
                text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eo',
                textColor: KWhite ,
                textAlign: TextAlign.left,
                textWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
