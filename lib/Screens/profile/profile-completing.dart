import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Login-register-bvn-screens/bvn-screens/bvn-details.dart';
import '../../Variables/globalVariables.dart';
import '../../widgets/my-button.dart';
import '../../widgets/my-text.dart';
import '../dashboard/dashboard.dart';

class ProfileCompleting extends StatefulWidget {
  const ProfileCompleting({Key? key}) : super(key: key);

  @override
  State<ProfileCompleting> createState() => _ProfileCompletingState();
}

class _ProfileCompletingState extends State<ProfileCompleting> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: KWhite,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
              child: Column(
                children: [

                  HeadingText(
                    text: 'Profile',
                    size: 21,
                    textWeight: FontWeight.w600,
                  ),
                  SizedBox(height: h * 0.065),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/bvnimage.png'),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: HeadingText(
                      text: 'AndyJoe245',
                      size: 16,
                      textWeight: FontWeight.w600,
                    ),
                  ),

                  ///User Data
                  ///1
                  SizedBox(height: h * 0.065),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.072,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/phoneicon.svg',height: 23,width: 23,),
                            SizedBox(width: w * 0.02),
                            DescriptionText(text: 'Phone Number',
                            size: 15,
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 95,
                          decoration: BoxDecoration(
                            color: KGreen,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset('assets/checkicon.svg', color: KWhite,
                                height: 11,width: 11,),
                              SizedBox(width: w * 0.011),
                              Text('Verified',style: TextStyle(color: KWhite,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///2
                  SizedBox(height: h * 0.022),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.072,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/emailicon.svg',height: 23,width: 23,),
                            SizedBox(width: w * 0.02),
                            DescriptionText(text: 'Email',
                              size: 15,
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 95,
                          decoration: BoxDecoration(
                              color: KGreen,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset('assets/checkicon.svg', color: KWhite,
                                height: 11,width: 11,),
                              SizedBox(width: w * 0.011),
                              Text('Verified',style: TextStyle(color: KWhite,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///3
                  SizedBox(height: h * 0.022),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.072,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/idicon.svg',height: 23,width: 23,),
                            SizedBox(width: w * 0.02),
                            DescriptionText(text: 'Official ID',
                              size: 15,
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 95,
                          decoration: BoxDecoration(
                              color: KGreen,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset('assets/checkicon.svg', color: KWhite,
                                height: 11,width: 11,),
                              SizedBox(width: w * 0.011),
                              Text('Verified',style: TextStyle(color: KWhite,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///4
                  SizedBox(height: h * 0.022),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.072,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/residenticon.svg',height: 23,width: 23,),
                            SizedBox(width: w * 0.02),
                            DescriptionText(text: 'Residential Address',
                              size: 15,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 35,
                          width: 85,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [KGreen, KBlue]),
                          ),
                          child: Center(child: Text('Change',style: TextStyle(color: KWhite),)),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: h * 0.08,),
                  MyElevatedButton(
                    onPressed: () {
                      Get.to(Dashboard());
                    },
                    child: const Text('CONTINUE',style: TextStyle(fontSize: 17),),
                    borderRadius: BorderRadius.circular(30),
                    width: w,



                  ),




                ],
              ),
            ),
          ),

        ));
  }
}
