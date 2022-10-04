import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../widgets/linear-percent-indicator.dart';
import 'donate-now.dart';


class HelpMeDetail extends StatefulWidget {
  const HelpMeDetail({Key? key}) : super(key: key);
  @override
  State<HelpMeDetail> createState() => _HelpMeDetailState();
}

class _HelpMeDetailState extends State<HelpMeDetail> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                    },
                    icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'HelpMe!',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///Image
                Container(
                  height: h * 0.35,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/1full.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: w,
                        height: h * 0.35,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xFF000000),
                                Color(0x00ffffff),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ]),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                          right: 12,
                          child: HeadingText(
                        text: 'Last donation 2h ago',
                        textColor: KWhite,
                            size: 13,
                            textWeight: FontWeight.w600,
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                HeadingText(
                  text: 'Help Poor children',
                  textWeight: FontWeight.w600,
                  size: 20,
                ),

                ///Profile
                SizedBox(height: 25),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23,
                      child: Image.asset('assets/affiliate1.png'),
                    ),
                    SizedBox(width: 10),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                          text: 'Herry Noah',
                          textWeight: FontWeight.w600,
                          size: 17.5,
                        ),
                        HeadingText(
                          text: 'San Diego, CA',
                          textColor: KLightGray,
                          textWeight: FontWeight.w600,
                          size: 13,
                        )
                      ],
                    ),
                  ],
                ),

                ///raised of
                SizedBox(height: 15),
                HeadingText(
                  text: '₦ 100,000 raised of ₦ 200,000',
                  textColor: KGreen,
                  textWeight: FontWeight.w500,
                  size: 16,
                  fontFamily: '',
                ),
                SizedBox(height: 10),
                MyLinearPercent(),

                ///Share + Donation
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyElevatedButton(
                          onPressed: (){},
                          width: w * 0.39,
                          borderRadius: BorderRadius.circular(30),
                          child: HeadingText(
                            text: 'Share',
                            textColor: KWhite,
                            textWeight: FontWeight.w600,
                            size: 17,
                          )),
                      SizedBox(width: w * 0.06),
                      MyElevatedButton(
                          onPressed: (){
                            Get.to(DonateNow());
                          },
                          width: w * 0.39,
                          borderRadius: BorderRadius.circular(30),
                          child: HeadingText(
                            text: 'Donation',
                            textColor: KWhite,
                            textWeight: FontWeight.w600,
                            size: 17,
                          )),
                    ],
                  ),
                ),

                ///Posted 2-Days ago
                Divider(color: KLightGray,thickness: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        text: 'Posted: 2 Days ago',
                        textColor: KLightGray,
                        textWeight: FontWeight.w600,
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          color: KGreen,
                          shape: BoxShape.circle
                        ),
                      ),
                      HeadingText(
                        text: 'Poor Children',
                        textColor: KLightGray,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                Divider(color: KLightGray,thickness: 2),

                ///Detail Text
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  child: HeadingText(
                    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',

                  ),
                ),

                ///Recent Donations
                HeadingText(
                  text: 'Recent Donations',
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                    width: w,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HeadingText(
                              text: '5 min ago',
                              textColor:  Colors.grey.shade400,
                              size: 11,
                            ),
                          ],
                        ),
                        HeadingText(
                          text: '₦ 100,000',
                          textWeight: FontWeight.w600,
                          fontFamily: '',
                          size: 22,
                          textColor: Color(0xFF0ED18F),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              child: Image.asset('assets/affiliate6.png'),
                            ),
                            SizedBox(width: 12),
                            HeadingText(
                              text: 'Herry Noah',
                              textWeight: FontWeight.w600,
                              size: 17.5,
                            ),
                          ],
                        )





                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                    width: w,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HeadingText(
                              text: '5 min ago',
                              textColor:  Colors.grey.shade400,
                              size: 11,
                            ),
                          ],
                        ),
                        HeadingText(
                          text: '₦ 100,000',
                          textWeight: FontWeight.w600,
                          fontFamily: '',
                          size: 22,
                          textColor: Color(0xFF0ED18F),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              child: Image.asset('assets/affiliate6.png'),
                            ),
                            SizedBox(width: 12),
                            HeadingText(
                              text: 'Herry Noah',
                              textWeight: FontWeight.w600,
                              size: 17.5,
                            ),
                          ],
                        )





                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                    width: w,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HeadingText(
                              text: '5 min ago',
                              textColor:  Colors.grey.shade400,
                              size: 11,
                            ),
                          ],
                        ),
                        HeadingText(
                          text: '₦ 100,000',
                          textWeight: FontWeight.w600,
                          fontFamily: '',
                          size: 22,
                          textColor: Color(0xFF0ED18F),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              child: Image.asset('assets/affiliate6.png'),
                            ),
                            SizedBox(width: 12),
                            HeadingText(
                              text: 'Herry Noah',
                              textWeight: FontWeight.w600,
                              size: 17.5,
                            ),
                          ],
                        )





                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
