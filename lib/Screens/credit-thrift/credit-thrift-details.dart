import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../widgets/circular-percentage-indicator.dart';


class CreditThriftDetails extends StatefulWidget {
  const CreditThriftDetails({Key? key}) : super(key: key);

  @override
  State<CreditThriftDetails> createState() => _CreditThriftDetailsState() ;
}

class _CreditThriftDetailsState extends State<CreditThriftDetails> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 80,
            width: w,
            color: KWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MyElevatedButton(
                onPressed: (){},
                width: w,
                borderRadius: BorderRadius.circular(30),
                child: HeadingText(
                  text: 'ADD THRIFT',
                  textColor: KWhite,
                  size: 17,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: KWhite,
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
                  text: 'Credit Thrift Details',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/search2.svg'),
                      SizedBox(width: w *0.02),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset('assets/filter.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [

                HeadingText(
                  text: 'Powered by Acorn Capital',
                  textColor: KBlue,
                  size: 17,
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: h * 0.045),

                ///XYZ
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(
                      text: 'Xyz Thrift Cluster',
                      textWeight: FontWeight.w600,
                      size: 19,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/tag.svg',height: 20),
                        HeadingText(
                          text: 'Public',
                          textColor: KWhite,
                          size: 13,
                        )
                      ],
                    )
                  ],
                ),

                ///Frequency-Weekly
                SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Frequency:',
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Weekly',
                              style: TextStyle(color: KGreen,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19)),

                        ],
                      ),
                    ),
                    Container(
                      height: 28,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: HeadingText(
                          text: 'Open',
                          textWeight: FontWeight.w600,
                          size: 15,
                          textColor: KGreen,
                        ),
                      ),
                    ),
                  ],
                ),


                ///Invite Thrif Members
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: h * 0.125,
                  width: w,
                  decoration: BoxDecoration(
                    color: KGreen,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          HeadingText(
                            text: 'Available Loan Credit',
                            textWeight: FontWeight.w600,
                            textColor: KWhite,
                            size: 14.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                HeadingText(
                                  text: '#5,000',
                                  textWeight: FontWeight.bold,
                                  textColor: KWhite,
                                  size: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: HeadingText(
                                    text: 'Thrift',
                                    textWeight: FontWeight.w600,

                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),

                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyElevatedButton2(
                            onPressed: (){},
                            height: 42,
                            borderRadius: BorderRadius.circular(30),
                            child: HeadingText(
                                text: 'Invite Thrift Members',
                                textColor: KWhite,
                                size: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ///150-Members
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: h * 0.125,
                  width: w,
                  decoration: BoxDecoration(
                    color: KWhite,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          HeadingText(
                            text: 'Contributed Amount',
                            textWeight: FontWeight.w600,
                            textColor: KBlue,
                            size: 14.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: HeadingText(
                              text: '#3,000',
                              textWeight: FontWeight.bold,
                              textColor: KBlue,
                              size: 25,
                            ),
                          ),

                        ],
                      ),

                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  HeadingText(
                                    text: '150',
                                    textWeight: FontWeight.w700,
                                    size: 17,
                                  ),
                                  SizedBox(height: 8),
                                  HeadingText(
                                    text: 'Members',
                                    textWeight: FontWeight.w600,
                                    size: 17,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                      MyCircularPercent(),

                    ],
                  ),
                ),

                ///Map
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/map1.png'),
                    SvgPicture.asset('assets/map2.svg'),

                  ],
                ),

                ///ListTiles
                ListTiles(),




              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ListTiles extends StatelessWidget {
  const ListTiles({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    List Images =[
      'chat3.png',
      'chat4.png',
      'chat5.png',
      'chat7.png',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: h * 0.3,
        child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/'+Images[index]),
                      ),
                      title: HeadingText(
                        text: 'Ust Aldi Taher',
                        textWeight: FontWeight.w600,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: HeadingText(
                          text: '@Ustalditaher',
                          textColor: KBlue,
                          textWeight: FontWeight.w600,
                          size: 14,
                        ),
                      ),
                    ),

                    Divider(thickness: 2,indent: 15,endIndent: 15,)
                  ],
                );
              }
          ),
      ),
    );
  }
}


