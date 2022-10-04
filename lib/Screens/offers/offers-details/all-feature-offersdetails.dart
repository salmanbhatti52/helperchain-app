import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../../widgets/linear-percent-indicator.dart';
import '../apply-offers.dart';

class OpenOffers extends StatefulWidget {
  const OpenOffers({Key? key}) : super(key: key);

  @override
  State<OpenOffers> createState() => _OpenOffersState();
}

class _OpenOffersState extends State<OpenOffers> {
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
                    }, icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'Offers',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Container(
              padding: EdgeInsets.all(12),
              width: w,
              decoration: BoxDecoration(
                color: KWhite,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///MacBook-Air
                  Container(
                    width: w,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///1st Column
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///Survival Fund
                            Row(
                              children: [
                                Container(
                                  child: HeadingText(
                                    text: 'MacBook Air',
                                    textWeight: FontWeight.w600,
                                    size: 14.5,
                                  ),
                                ),
                                SizedBox(width: w * 0.023,),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset('assets/tag1.svg',height: 16),
                                    HeadingText(
                                      text: 'Feature',
                                      textColor: KWhite,
                                      textWeight: FontWeight.w600,
                                      size: 10,
                                    )
                                  ],
                                )

                              ],
                            ),
                            ///Nirsal
                            SizedBox(height: h * 0.018),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: KGreen,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/affiliate3.png')
                                      )
                                  ),
                                ),
                                SizedBox(width: w * 0.023,),
                                Container(
                                  width: w * 0.27,
                                  child: HeadingText(
                                    text: 'Ust Aldi Taher',
                                    textWeight: FontWeight.w600,
                                    size: 13,
                                  ),
                                ),
                                Container(
                                  width: w * 0.22,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Category:',
                                      style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Investment', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ///Trust Level
                            SizedBox(height: h * 0.018),
                            Row(
                              children: [
                                Text('Trust Level',style: TextStyle(fontSize:11,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                                SizedBox(width: w * 0.012),
                                RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star_rounded,
                                    color: KYellow,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient:  LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [KGreen, KBlue])
                                  ),
                                  child: Center(child: Icon(Icons.check,color: KWhite,size: 14,)),
                                ),
                              ],
                            ),
                          ],
                        ),

                        ///2nd Column
                        Column(
                          children: [
                            Image.asset('assets/apple.png',fit: BoxFit.fill,height: 70),
                          ],
                        ),
                      ],
                    ),


                  ),

                  ///offer Summary
                  SizedBox(height: 20),
                  HeadingText(
                    text: 'Offer Summary',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  SizedBox(height: 6),
                  HeadingText(
                    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo aclerieum',
                    textAlign: TextAlign.justify,
                  ),

                  ///offer Details
                  SizedBox(height: 15),
                  HeadingText(
                    text: 'Offer Summary',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  SizedBox(height: 6),
                  HeadingText(
                    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut…',
                    textAlign: TextAlign.justify,
                  ),

                  ///Video
                  SizedBox(height: 10),
                  Container(
                    height: h * 0.23,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/applyforstore.jpg'),
                        fit: BoxFit.fill
                      ),
                    ),
                    child: Image.asset('assets/play.png'),
                  ),

                  ///Review Score
                  SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        text: 'Review Score',
                        textWeight: FontWeight.w600,
                      ),
                      HeadingText(
                        text: '6/10',
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  MyLinearPercent(),

                  ///Tags
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                        decoration: BoxDecoration(
                          color: KGreen,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: HeadingText(
                          text: 'Terms & Conditions',
                          size: 15,
                        ),
                      ),
                      SizedBox(width: w * 0.025),
                      ///2
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                        decoration: BoxDecoration(
                          color: KGreen,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: HeadingText(
                          text: 'Available to Who?',
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                    decoration: BoxDecoration(
                      color: KGreen,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: HeadingText(
                      text: 'Complete Application Form',
                      size: 15,
                    ),
                  ),

                  ///Amount
                  SizedBox(height: 25),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'Beneficiary Amount',
                            textWeight: FontWeight.w600,
                            size: 16,
                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'Application Fee',
                            textWeight: FontWeight.w600,
                            size: 16,
                          ),
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: '₦ 200,000,000',
                            textWeight: FontWeight.w600,
                            fontFamily: '',
                            textColor: KGreen,
                            size: 18,
                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: '₦ 50.00',
                            textWeight: FontWeight.w600,
                            fontFamily: '',
                            textColor: KGreen,
                            size: 18,
                          ),
                        ],
                      )
                    ],
                  ),

                  ///Apply button
                  SizedBox(height: 25),
                  Center(
                    child: MyElevatedButton(
                        onPressed: (){
                          Get.to(ApplyOffers());
                        },
                        width: w * 0.35,
                        borderRadius: BorderRadius.circular(30),
                        child: HeadingText(
                      text: 'APPLY',
                      textColor: KWhite,
                      textWeight: FontWeight.w600,
                    )),
                  ),
                  SizedBox(height: 5),





                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
