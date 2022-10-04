import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/login-register-bvn-screens/login-screen.dart';
import 'package:helpers_chain/login-register-bvn-screens/register-screen.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'boarding-images/boarding-image1.dart';
import 'boarding-images/boarding-image2.dart';
import 'boarding-images/boarding-image3.dart';
import 'boarding-images/boarding-image4.dart';
import 'boarding-images/boarding-image5.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [

                Container(
                  height: h * 0.73,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      PageView(
                          //physics: BouncingScrollPhysics(),
                          controller: _controller,
                          onPageChanged: (index){
                            setState((){
                            });
                          },
                          children: const [
                            BoardingImage1(),
                            BoardingImage2(),
                            BoardingImage3(),
                            BoardingImage4(),
                            BoardingImage5(),
                          ],
                        ),

                        ///Indicator
                        Positioned(
                          bottom: 30,
                          child: SmoothPageIndicator(
                              controller: _controller,
                              count: 5,
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2.5,
                                activeDotColor: KGreen,
                                dotColor: Colors.grey.shade200,
                                dotHeight: 10,
                                dotWidth: 10,)
                          ),
                        ),


                    ],
                  ),
                ),


                 Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ///Login button
                SizedBox(height: h * 0.05,),
                MyElevatedButton(
                    onPressed: (){

                      Get.to(const Login());
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    borderRadius: BorderRadius.circular(30),
                    width: w,
                    child: const Text('LOGIN',
                      style: TextStyle(fontSize: 17),)),
                ///Register Account button
                SizedBox(height: h * 0.04,),
                GestureDetector(
                  onTap: (){
                    Get.to(const Register());

                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                  },
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: KGreen,width: 2),
                    ),
                    child: const Center(
                      child: Text('REGISTER AN ACCOUNT',style: TextStyle
                        (fontSize: 17),),
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],
    ),
      ),

    );
  }
}
