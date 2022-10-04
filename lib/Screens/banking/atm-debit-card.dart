import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import 'banking-1.dart';

class AtmDebitCard extends StatefulWidget {
  const AtmDebitCard({Key? key}) : super(key: key);

  @override
  State<AtmDebitCard> createState() => _AtmDebitCardState();
}

class _AtmDebitCardState extends State<AtmDebitCard> {

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        backgroundColor: KWhite,
        drawer: MyDrawer(),
        appBar: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: AppBar(
                elevation: 0,
                backgroundColor: KWhite,
                centerTitle: true,
                leading: IconButton(
                    onPressed: (){
                      Get.back();
                    }, icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'ATM Debit Card',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Column(
              children: [

                ///ATM Card
                Container(
                  padding: EdgeInsets.all(20),
                  height: h * 0.31,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(colors: [KBlue, KGreen]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ///logo
                      Row(
                        children: [
                          SvgPicture.asset('assets/atmlogo1.svg',color: KWhite,height: 58),
                          SizedBox(width: w * 0.035),
                          SvgPicture.asset('assets/atmlogo2.svg',color: KWhite,height: 35,),
                        ],
                      ),
                      ///Chip
                      SizedBox(height: h * 0.02,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/cardchip.png',height: 35),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(children: [
                              HeadingText(text: 'Credit',textWeight: FontWeight.w600,size: 21,textColor: KWhite,),
                              SizedBox(width: w * 0.02),
                              SvgPicture.asset('assets/wifiicon.svg',height: 33 ,),
                            ],
                            ),
                          ),

                        ],
                      ),
                      ///Card Number
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadingText(text: '4649',size: 20,textColor: KWhite,),
                            HeadingText(text: '5201',size: 20,textColor: KWhite,),
                            HeadingText(text: '1234',size: 20,textColor: KWhite,),
                            HeadingText(text: '5678',size: 20,textColor: KWhite,),
                          ],
                        ),
                      ),
                      ///Card Holder...
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 HeadingText(text: 'CARD HOLDER',textColor: KWhite,),
                                 SizedBox(height: h * 0.002),
                                 HeadingText(text: 'ROSS GELLER',textColor: KWhite,size: 20,textWeight: FontWeight.w600,),
                               ],
                             ),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 HeadingText(text: 'VALID TILL',textColor: KWhite,),
                                 SizedBox(height: h * 0.002),
                                 HeadingText(text: '01/25',textColor: KWhite,size: 20,textWeight: FontWeight.w600,),
                               ],
                             ),
                             SvgPicture.asset('assets/visa.svg'),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                ///Card-Order Price
                SizedBox(height: h * 0.05),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(text: 'Credit Card Order',textWeight: FontWeight.w600,size: 16,),
                        SizedBox(height: 5),
                        HeadingText(text: 'One time order fee',textColor: KDarkGrey,),
                      ],
                    ),
                    Row(children: [
                      SvgPicture.asset('assets/nigeria.svg',color: KGreen,height: 18),
                      SizedBox(width: w * 0.008,),
                      HeadingText(text: '600',textWeight: FontWeight.w600,size: 23,),
                    ],)

                  ],
                ),

                SizedBox(height: h * 0.05),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  HeadingText(text: 'Use at ATMs',textWeight: FontWeight.w600,),
                    HeadingText(text: 'Withdraw cash from any ATM',textColor: KDarkGrey,),
                  ],
                ),
                SizedBox(height: h * 0.02),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(text: 'Use at Shops',textWeight: FontWeight.w600,),
                    HeadingText(text: 'Shop securely at retail',textColor: KDarkGrey,),
                  ],
                ),
                SizedBox(height: h * 0.02),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(text: 'Get Alerts',textWeight: FontWeight.w600,),
                    HeadingText(text: 'Get Notifications on SMS',textColor: KDarkGrey,),
                  ],
                ),

                SizedBox(height: h * 0.15),
                MyElevatedButton(
                    onPressed: (){
                      showCustomDialog1(context);
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(text: 'ORDER CARD',textColor: KWhite,textWeight: FontWeight.w600,size: 17,)),




              ],
            ),
          ),
        ),
      ),
    );
  }
}

///Custom Dialog
void showCustomDialog1(context) {
  double w =MediaQuery.of(context).size.width;
  showDialog(
    context: context,
    builder: (ctx) =>
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 285 ,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/dialogicon1.svg',height: 120),
                  // Image.asset('assets/logindialog.png',height: 120,width: 120),
                  SizedBox(height: 8),
                  HeadingText(text: 'Thank you for your order!',textColor: KBlue,textWeight: FontWeight.bold,),
                  SizedBox(height: 12),
                  Text('Thank you for your order, we will contact you\n'
                      'once the card is ready for collection.',
                    style: TextStyle(fontSize: 11.5  ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20),
                  MyElevatedButton(
                    onPressed: (){
                      Get.to(Banking1());
                    },
                    child: Text('OKAY'),
                    width: w * 0.6,
                    borderRadius: BorderRadius.circular(30),
                  ),

                ],
              ),
            ),
          ),
        ),
  );
}
