import 'package:flutter/material.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../login-register-bvn-screens/login-register-screen.dart';
import 'onboarding-page1.dart';
import 'onboarding-page2.dart';
import 'onboarding-page3.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
          body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
           child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ///PAGEVIEW
              SizedBox(
                height: h*0.75,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (index){
                    setState((){
                      onLastPage = (index == 2);
                    });
                  },
                  children: const [
                    OnboardingPage1(),
                    OnboardingPage2(),
                    OnboardingPage3(),
                  ],
                ),
              ),

              /// Indicator
              Column(
                children: [
                  SizedBox(height: h*0.02,),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2,
                      activeDotColor: KGreen,
                      dotColor: Colors.grey.shade200,
                      dotHeight: 13,
                      dotWidth: 13,)
                  ),
                  SizedBox(height: h*0.06,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child:Text(onLastPage?'':'Skip',style: const TextStyle(
                            color: KDarkGrey,
                            fontSize: 18
                        ),),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            if(onLastPage){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginRegister()));
                            }
                            else{
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: KGreen,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(child: Icon(Icons.arrow_forward,color: Colors.white,)),
                          ),
                        ),
                      ),
                    ],),

                ],
              ),
              const SizedBox(),
            ]),
      ),
    ));
  }
}
