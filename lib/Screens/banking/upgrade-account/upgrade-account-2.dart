import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../banking-2.dart';

class UpgradingAccount2 extends StatefulWidget {
  const UpgradingAccount2({Key? key}) : super(key: key);

  @override
  State<UpgradingAccount2> createState() => _UpgradingAccount2State();
}

class _UpgradingAccount2State extends State<UpgradingAccount2> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: KWhite,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
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
                  SingleChildScrollView(
                    child: Container(
                      height: h * 0.17,
                      width: w,
                      decoration: BoxDecoration(
                        color: KWhite,
                        borderRadius: BorderRadius.circular(11),
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
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/fidelityicon.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('www.fidelitybank.ng',style: TextStyle(color: KBlue),),
                      ),
                    ],
                  ),

                  //2
                  Container(
                    height: h * 0.13,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(11),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
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
                          SizedBox(width: w * 0.08),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Andy Joe',style: TextStyle(fontSize: 15),),
                              SizedBox(height: h * 0.015),
                              const Text('053103585 000123456789',style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///Account Limitations
                  HeadingText(
                    text: 'Account Limitations',
                    textColor: KGreen,
                    textWeight: FontWeight.w600,
                    size: 15,
                  ),
                  Container(
                    height: h * 0.3,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                      child: Row(
                        children: [
                          ///left Column (texts)
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text: 'One Time Transfer',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Daily Transfer',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.015),
                              HeadingText(
                                text: 'Account Type',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.06),
                              HeadingText(
                                text: 'Quick loan limit',
                                textColor: KBlack,
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/nigeria.svg',height: 12,color: KBlue),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("50,0000.00",style: TextStyle(fontSize: 15,color: KBlue),),
                                  ),
                                ],
                              ),
                            ],),
                          SizedBox(width: w * 0.05),

                          ///right Column (texts)
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/nigeria.svg',height: 12),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("5,000.00",style: TextStyle(fontSize: 15),),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.015),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/nigeria.svg',height: 12),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text('50,000.00',style: TextStyle(fontSize: 15),),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.015),
                              const Text('Saving account, Tier 3',style: TextStyle(fontSize: 15,color: KGreen),),
                              SizedBox(height: h * 0.06),
                              ///recheck button
                              Container(
                                width: w * 0.42,
                                height: 43.0,
                                decoration: const BoxDecoration(
                                ),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    primary: KBlue,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  ),
                                  child: const Text('RECHECK',style: TextStyle(color: KWhite),),
                                ),
                              ),
                              SizedBox(height: h * 0.015),
                              const Text('Costs 100 to Recheck',style: TextStyle(color: KRed),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.01,),
                  MyElevatedButton(
                    onPressed: () {
                      Get.to(Banking2());

                    },
                    child: const Text('DONE',style: TextStyle(fontSize: 17),),
                    borderRadius: BorderRadius.circular(30),
                    width: w,
                  ),
                  SizedBox(height: h * 0.014,),






                ],
              ),
            ),
          ),

        ));
  }
}


void showCustomDialog(context) {
  showDialog(
    context: context,
    builder: (ctx) =>
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          content: SizedBox(
            height: 220,
            child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/popergif.gif', height: 160, width: 160,),
                const Text("Congratulations!", style: TextStyle(
                    color: KGreen, fontWeight: FontWeight.w600, fontSize: 17),),
                const Text("You have completed your\nmembership registration.",
                    style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          actions: const <Widget>[],
        ),
  );
}





