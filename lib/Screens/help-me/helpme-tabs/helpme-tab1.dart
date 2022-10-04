import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';

import '../../../Variables/globalVariables.dart';
import '../../../widgets/linear-percent-indicator.dart';
import '../../../widgets/my-text.dart';
import '../helpme-detail.dart';

class HelpMeTab1 extends StatefulWidget {
  const HelpMeTab1({Key? key}) : super(key: key);
  @override
  State<HelpMeTab1> createState() => _HelpMeTab1State();
}

class _HelpMeTab1State extends State<HelpMeTab1> {
  List Images = [
    '11.png',
    '22.png',
    '33.png',
  ];
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          onTap: (){
            Get.to(HelpMeDetail());
          },

          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.only(left: 5,right: 5,bottom: 10),
              width: w,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Image
                  Container(
                    height: h * 0.215,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/'+Images[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  ///Text Data
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        HeadingText(
                          text: 'San Diego, CA',
                          textColor: KLightGray,
                          textWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Help Poor children ',
                          textWeight: FontWeight.w600,
                          size: 17,
                        ),
                        SizedBox(height: 5),
                        ///raised of
                        HeadingText(
                          text: '₦ 100,000 raised of ₦ 200,000',
                          textColor: KGreen,
                          textWeight: FontWeight.w500,
                          size: 16,
                          fontFamily: '',
                        ),

                        ///last donation + Percent Indicator
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Last Donation 2h ago',
                          textColor: KLightGray,
                          textWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10),
                        MyLinearPercent(),
                    ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        );


      },
    );
  }
}
