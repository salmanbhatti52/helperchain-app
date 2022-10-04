import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/banking/upgrade-account/upgrade-account-2.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class UpgradingAccount1 extends StatefulWidget {
  const UpgradingAccount1({Key? key}) : super(key: key);

  @override
  State<UpgradingAccount1> createState() => _UpgradingAccount1State();
}

class _UpgradingAccount1State extends State<UpgradingAccount1> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: KWhite,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
              child: Column(
                children: [

                  Container(
                    height: h * 0.29,
                    width: w * 0.29,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/bvnimage.png'),
                        )
                    ),
                  ),


                  ///User Data
                  //1
                  Container(
                    height: h * 0.18,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(0, 2), blurRadius: 6.0)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text: 'Full Name',
                                textColor: KGreen,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Date of Birth',
                                textColor: KGreen,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Place of Birth',
                                textColor: KGreen,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                            ],),
                          SizedBox(width: w * 0.03),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Andy',style: TextStyle(fontSize: 15,color: KDarkGrey),),
                              SizedBox(height: h * 0.015),
                              const Text('10/06/2022',style: TextStyle(fontSize: 15,color: KDarkGrey),),

                              SizedBox(height: h * 0.015),
                              const Text('Federal Secertriat Complex,\n'
                                  'Phase....Lorem Ipsum',style: TextStyle(fontSize: 15,color: KDarkGrey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02,),
                  //2
                  Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(0, 2), blurRadius: 6.0)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text: 'Email',
                                textColor: KGreen,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Phone #',
                                textColor: KGreen,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                            ],),
                          SizedBox(width: w * 0.125),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Andyjoe@sample.com',style: TextStyle(fontSize: 15,color: KDarkGrey),),
                              SizedBox(height: h * 0.015),
                              const Text('123 456 789 231',style: TextStyle(fontSize: 15,color: KDarkGrey),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/editicon.svg'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02,),
                  //3
                  Container(
                    height: h * 0.19,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(0, 2), blurRadius: 6.0)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text: 'Bank Name',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Account\nNumber',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                            ],),
                          SizedBox(width: w * 0.05),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Fidelity Bank',style: TextStyle(fontSize: 15,color: KBlue,
                                  fontWeight: FontWeight.w500),),
                              SizedBox(height: h * 0.015),
                              const Text('053103585 000123456789',style: TextStyle(fontSize: 15,color: KBlue,
                                  fontWeight: FontWeight.w500),),
                              SizedBox(height: h * 0.025),
                              Row(
                                children: [
                                  Image.asset('assets/fidelityicon.png'),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text('www.fidelitybank.ng',style: TextStyle(color: KBlue),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.07,),
                  MyElevatedButton(
                    onPressed: () {
                      Get.to(UpgradingAccount2());
                    },
                    child: const Text('NEXT',style: TextStyle(fontSize: 17),),
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
