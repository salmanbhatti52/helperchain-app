import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({Key? key}) : super(key: key);

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(height: h*0.05),

              SvgPicture.asset('assets/boardinglogo.svg',height: h * 0.15,),
              SizedBox(height: h*0.04),
              SvgPicture.asset('assets/boarding/boarding1.svg',height: h * 0.25,),

              SizedBox(height: h*0.08,),

              const Text('Featured Offers',style: TextStyle(
                fontWeight: FontWeight.w600,
                  fontSize: 20),),

              SizedBox(height: h * 0.02,),

              const Text('There are many variations of passages of'
                  'Lorem Ipsum available, but the majority have'
                  'suffered alteration in some form',
                style: TextStyle(fontSize: 16,color: KDarkGrey),textAlign: TextAlign.center,),

            ]),
          ),
        ),
    );
  }
}
