import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({Key? key}) : super(key: key);

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 15,right: 15),
          child: Center(
            child: Column(children: [
              SizedBox(height: h*0.05,),

              SvgPicture.asset('assets/boardinglogo.svg',height: h * 0.15,),
              SizedBox(height: h*0.04),
              SvgPicture.asset('assets/boarding/boarding2.svg',height: h * 0.25),

              SizedBox(height: h*0.08,),

              const Text('Featured Offers Zone',style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 20),),

              SizedBox(height: h * 0.02),
              const Text('There are many variations of passages of'
                  'Lorem Ipsum available, but the majority have'
                  'suffered alteration in some form',
                style: TextStyle(color: KDarkGrey,fontSize: 16,),textAlign: TextAlign.center,),

            ]),
          ),
        ),
      ),
    );
  }
}
