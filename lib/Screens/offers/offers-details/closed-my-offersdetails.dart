import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../../widgets/linear-percent-indicator.dart';

class ClosedOffers extends StatefulWidget {
  const ClosedOffers({Key? key}) : super(key: key);

  @override
  State<ClosedOffers> createState() => _ClosedOffersState();
}

class _ClosedOffersState extends State<ClosedOffers> {
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

                  ///Top Container
                  Container(
                    width: w,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///1st Column
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ///Survival Fund
                                  Row(
                                    children: [
                                      Container(
                                        child: HeadingText(
                                          text: 'COVID-19 Loan',
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
                                                image: AssetImage('assets/nirsalicon.png'),
                                              fit: BoxFit.fill
                                            )
                                        ),
                                      ),
                                      SizedBox(width: w * 0.023,),
                                      Container(
                                        width: w * 0.27,
                                        child: HeadingText(
                                          text: 'NIRSAL',
                                          textWeight: FontWeight.w600,
                                          size: 13,
                                        ),
                                      ),
                                      Container(
                                        width: w * 0.28,
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Category: ',
                                            style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Loan', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ///2nd Column
                              Column(
                                children: [
                                  Image.asset('assets/nirsal.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ///Trust Level-line
                        SizedBox(height: 13),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Trust Level',style: TextStyle(fontSize:12,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                            Container(
                              width: w * 0.3,
                              child: Row(
                                children: [
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
                                    margin: EdgeInsets.only(left: 4),
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
                            ),
                            Container(
                              height: 20,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.red.shade100,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: HeadingText(
                                  text: 'Closed',
                                  textWeight: FontWeight.w600,
                                  size: 11,
                                  textColor: Colors.red,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  child: HeadingText(
                                    text: 'See details',
                                    textWeight: FontWeight.w600,
                                    textColor: KBlue,
                                    size: 12,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5,bottom: 3),
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: KBlue
                                  ),
                                  child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 12,)),
                                ),
                              ],
                            ),
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
                    text: 'During the pandemic, we helped 500 beneficiaries to secure the covid-19 loan. And also, we created a system that helped to guide our beneficiaries on how to make good use of their fund.',
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
                    text: 'The corona virus (COVID-19) pandemic has led to unprecedented disruptions to global supply chains, sharp drop in global crude oil prices, turmoil in global stock and financial markets, massive cancellation of sporting and entertainment event, lockdown of large swaths movements of persons in many countries, and intercontinental travel bans/restrictions across critical air routes across the world. These outcomes have had severe consequences on households’ livelihoods and business activities, resulting from drop in global demand, declined consumer confidence and slowdown in production. In this respect, the Central Bank of Nigeria (CBN) introduced the N50 billion Targeted Credit Facility (TCF) as a stimulus package to support households and micro, small and medium enterprises (MSMEs) affected by the COVID-19 pandemic.',
                    textAlign: TextAlign.justify,
                  ),

                  ///Image
                  SizedBox(height: 10),
                  Container(
                    height: h * 0.23,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('assets/mountain.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
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
                            text: 'Number of Beneficiaries',
                            textWeight: FontWeight.w600,
                            size: 16,
                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'Volume of transaction',
                            textWeight: FontWeight.w600,
                            size: 16,
                          ),
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: '500',
                            textWeight: FontWeight.w600,
                            textColor: KGreen,
                            size: 18,
                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: '₦ 200,000,000 ',
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
                    child: Container(
                      width: w * 0.35,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: KLightGray,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26, offset: Offset(0, 2), blurRadius: 3.0)
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.black26,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        ),
                        child: HeadingText(
                          text: 'APPLY',
                          textColor: KWhite,
                          textWeight: FontWeight.w600,
                        ),
                      ),
                    ),
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
