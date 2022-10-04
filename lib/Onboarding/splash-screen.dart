import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/onboarding/onbording.dart';

import '../variables/globalVariables.dart';


// class SplashScreen extends StatefulWidget {
//   @override
//   SplashScreenState createState() => SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Timer(
//         Duration(seconds: 3),
//             () => Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding())),
//     );
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: KWhite,
//       body: Center(child: SvgPicture.asset('assets/boardinglogo.svg',
//         height: 110,
//         width: 110,
//       )),
//       // fit: BoxFit.cover,
//       // height: MediaQuery.of(context).size.height,
//       // width: MediaQuery.of(context).size.width,
//     );
//   }
// }

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
          () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding())),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KWhite,
      body: Center(child: SvgPicture.asset('assets/boardinglogo.svg',
        height: 190,
        width: 190,
      )),
      // fit: BoxFit.cover,
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
    );
  }
}

