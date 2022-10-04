import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import '../../../Variables/globalVariables.dart';
import '../../../widgets/my-button.dart';
import '../../../widgets/my-text.dart';
import '../create-offers/create-offer-step1.dart';
import '../offers-details/closed-my-offersdetails.dart';

class MyTab extends StatelessWidget {
  const MyTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 80,
          width: w,
          color: KWhite,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: MyElevatedButton(
              onPressed: (){
                Get.to(CreateOfferStep1());
              },
              width: w,
              borderRadius: BorderRadius.circular(30),
              child: HeadingText(
                text: 'CREATE OFFER',
                textColor: KWhite,
                size: 17,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: KWhite,
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index){


            return GestureDetector(
              onTap: (){
                Get.to(ClosedOffers());
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.only(left: 5,right: 5,top: 8,bottom: 5),
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
                                        text: 'HMMO',
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
                                            image: AssetImage('assets/group8.png'),
                                            fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: w * 0.023,),
                                    Container(
                                      width: w * 0.27,
                                      child: HeadingText(
                                        text: 'Avon Healthcare Limited',
                                        textWeight: FontWeight.w600,
                                        size: 13,
                                      ),
                                    ),
                                    Container(
                                      width: w * 0.28,
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Category:',
                                          style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Health Maintenance Organization', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

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
                                Image.asset('assets/hygeia.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ///Trust Level-line
                      SizedBox(height: 13),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Trust Level',style: TextStyle(fontSize:11.5,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
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
                                  size: 11,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,bottom: 3),
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: KBlue
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 11,)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );


          }
      ),
    );
  }
}