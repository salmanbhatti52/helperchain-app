import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

class FeaturedTab extends StatefulWidget {
  const FeaturedTab({Key? key}) : super(key: key);

  @override
  State<FeaturedTab> createState() => _FeaturedTabState();
}

class _FeaturedTabState extends State<FeaturedTab> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [

          ///1st
          GestureDetector(
            onTap: (){
              showModalBottomSheet<void>(
                backgroundColor: KWhite,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                context: context,
                builder: (BuildContext context) {
                  return NoticeboardBottomSheet();
                },
              );

            },
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 child: Stack(
                   alignment: Alignment.center,
                   children: [
                     SvgPicture.asset('assets/notice1.svg',height: h * 0.28,),
                     Positioned(
                       bottom: 30,
                       child: SizedBox(
                         width: w * 0.35,
                         child: Column(
                           children: [
                             Container(
                               height: 50,
                               width: 50,
                               decoration: BoxDecoration(
                                 color: KWhite,
                                 border: Border.all(color: KGreen,width: 1.5),
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                   image: AssetImage('assets/apple.png'),
                                 ),
                               ),
                             ),
                             SizedBox(height: h * 0.008),
                             HeadingText(
                               text: 'Item Name that is available for sale',
                               textAlign: TextAlign.justify,
                               textWeight: FontWeight.w600,
                               textColor: KWhite,
                               size: 15,
                             ),
                             SizedBox(height: h * 0.008),
                             Row(
                               children: [
                                 HeadingText(
                                   text: 'Ust Aldi Taher',
                                   textWeight: FontWeight.bold,
                                   textColor: KWhite,
                                   size: 15,
                                 ),
                                 SizedBox(width: w * 0.02),
                                 SvgPicture.asset('assets/verified.svg')
                               ],
                             )
                           ],
                         ),
                       ),
                     ),

                   ],
                 )
                ),

                Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/notice2.svg',height: h * 0.28,),
                        Positioned(
                          bottom: 30,
                          child: SizedBox(
                            width: w * 0.35,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: KWhite,
                                    border: Border.all(color: KGreen,width: 1.5),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/apple.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: h * 0.008),
                                HeadingText(
                                  text: 'Item Name that is available for sale',
                                  textAlign: TextAlign.justify,
                                  textWeight: FontWeight.w600,
                                  textColor: KWhite,
                                  size: 15,
                                ),
                                SizedBox(height: h * 0.008),
                                Row(
                                  children: [
                                    HeadingText(
                                      text: 'Ust Aldi Taher',
                                      textWeight: FontWeight.bold,
                                      textColor: KWhite,
                                      size: 15,
                                    ),
                                    SizedBox(width: w * 0.02),
                                    SvgPicture.asset('assets/verified.svg')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    )
                ),
              ],
            ),
          ),

          ///2nd
          SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/notice3.svg',height: h * 0.28,),
                      Positioned(
                        bottom: 30,
                        child: SizedBox(
                          width: w * 0.35,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: KWhite,
                                  border: Border.all(color: KGreen,width: 1.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/apple.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.008),
                              HeadingText(
                                text: 'Item Name that is available for sale',
                                textAlign: TextAlign.justify,
                                textWeight: FontWeight.w600,
                                textColor: KWhite,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  HeadingText(
                                    text: 'Ust Aldi Taher',
                                    textWeight: FontWeight.bold,
                                    textColor: KWhite,
                                    size: 15,
                                  ),
                                  SizedBox(width: w * 0.02),
                                  SvgPicture.asset('assets/verified.svg')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),
              Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/notice4.svg',height: h * 0.28,),
                      Positioned(
                        bottom: 30,
                        child: SizedBox(
                          width: w * 0.35,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: KWhite,
                                  border: Border.all(color: KGreen,width: 1.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/apple.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.008),
                              HeadingText(
                                text: 'Item Name that is available for sale',
                                textAlign: TextAlign.justify,
                                textWeight: FontWeight.w600,
                                textColor: KWhite,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  HeadingText(
                                    text: 'Ust Aldi Taher',
                                    textWeight: FontWeight.bold,
                                    textColor: KWhite,
                                    size: 15,
                                  ),
                                  SizedBox(width: w * 0.02),
                                  SvgPicture.asset('assets/verified.svg')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),
            ],
          ),

          ///3rd + 4th
          Container(
            height: h * 0.58,
            child: Stack(
              children: [
                ///3rd
                Positioned(
                  top: 8,
                  right: 6,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/notice5.svg',height: h * 0.29),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(16 / 360),
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          width: w * 0.35,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: KWhite,
                                  border: Border.all(color: KGreen,width: 1.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/apple.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.008),
                              HeadingText(
                                text: 'Item Name that is available for sale',
                                textAlign: TextAlign.justify,
                                textWeight: FontWeight.w600,
                                textColor: KWhite,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  HeadingText(
                                    text: 'Ust Aldi Taher',
                                    textWeight: FontWeight.bold,
                                    textColor: KWhite,
                                    size: 15,
                                  ),
                                  SizedBox(width: w * 0.02),
                                  SvgPicture.asset('assets/verified.svg')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///4th
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/notice6.svg',height: h * 0.32,),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-20 / 360),
                        child: Container(
                          width: w * 0.35,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: KWhite,
                                  border: Border.all(color: KGreen,width: 1.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/apple.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.008),
                              HeadingText(
                                text: 'Item Name that is available for sale',
                                textAlign: TextAlign.justify,
                                textWeight: FontWeight.w600,
                                textColor: KWhite,
                                size: 15,
                              ),
                              SizedBox(height: h * 0.008),
                              Row(
                                children: [
                                  HeadingText(
                                    text: 'Ust Aldi Taher',
                                    textWeight: FontWeight.bold,
                                    textColor: KWhite,
                                    size: 15,
                                  ),
                                  SizedBox(width: w * 0.02),
                                  SvgPicture.asset('assets/verified.svg')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///5th
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 3),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/notice7.svg',height: h * 0.28,),
                        Positioned(
                          bottom: 30,
                          child: SizedBox(
                            width: w * 0.35,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: KWhite,
                                    border: Border.all(color: KGreen,width: 1.5),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/apple.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: h * 0.008),
                                HeadingText(
                                  text: 'Item Name that is available for sale',
                                  textAlign: TextAlign.justify,
                                  textWeight: FontWeight.w600,
                                  textColor: KWhite,
                                  size: 15,
                                ),
                                SizedBox(height: h * 0.008),
                                Row(
                                  children: [
                                    HeadingText(
                                      text: 'Ust Aldi Taher',
                                      textWeight: FontWeight.bold,
                                      textColor: KWhite,
                                      size: 15,
                                    ),
                                    SizedBox(width: w * 0.02),
                                    SvgPicture.asset('assets/verified.svg')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    )
                ),

                Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/notice4.svg',height: h * 0.28,),
                        Positioned(
                          bottom: 30,
                          child: SizedBox(
                            width: w * 0.35,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: KWhite,
                                    border: Border.all(color: KGreen,width: 1.5),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/apple.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: h * 0.008),
                                HeadingText(
                                  text: 'Item Name that is available for sale',
                                  textAlign: TextAlign.justify,
                                  textWeight: FontWeight.w600,
                                  textColor: KWhite,
                                  size: 15,
                                ),
                                SizedBox(height: h * 0.008),
                                Row(
                                  children: [
                                    HeadingText(
                                      text: 'Ust Aldi Taher',
                                      textWeight: FontWeight.bold,
                                      textColor: KWhite,
                                      size: 15,
                                    ),
                                    SizedBox(width: w * 0.02),
                                    SvgPicture.asset('assets/verified.svg')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    )
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}


class NoticeboardBottomSheet extends StatefulWidget {
  const NoticeboardBottomSheet({Key? key}) : super(key: key);

  @override
  State<NoticeboardBottomSheet> createState() => _NoticeboardBottomSheetState();
}
class _NoticeboardBottomSheetState extends State<NoticeboardBottomSheet> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.57,
      width: w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Divider(thickness: 4,color: Colors.grey.shade500,indent: 120,endIndent: 120,),
              const SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,color: KGreen),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/applyforstore.jpg'),
                          fit: BoxFit.fill,
                        )
                    ),

                  ),

                  SizedBox(width: w * 0.03),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingText(
                        text: 'Herry Noah',
                        textWeight: FontWeight.w600,
                        size: 20,
                      ),
                      SizedBox(height: h * 0.01),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 4,
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
                          SizedBox(width: 5),
                          HeadingText(
                            text: '(4.0)',
                            textColor: KDarkGrey,
                            size: 11,
                          )
                        ],
                      ),
                      SizedBox(height: h * 0.01),
                      RichText(
                        text: TextSpan(
                          text: 'Membership Level: ',
                          style: TextStyle(color: KBlack,fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Gold', style: TextStyle(fontWeight: FontWeight.w400)),

                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      RichText(
                        text: TextSpan(
                          text: 'Trust Level: ',
                          style: TextStyle(color: KBlack,fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: '6/10', style: TextStyle(fontWeight: FontWeight.w400)),

                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),

              SizedBox(height: 25),
              HeadingText(
                text: 'MacBook Air',
                textWeight: FontWeight.w600,
                size: 17,
              ),

              ///Images
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: h * 0.15,
                  width: w * 0.3,
                  decoration: BoxDecoration(
                    color: KPink,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/laptop1.png'),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                        color: KPink,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/laptop2.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                        color: KPink,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/laptop1.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),

                ],),

              ///Description
              SizedBox(height: 15),
              HeadingText(
                text: 'During the pandemic, we helped 500 beneficiaries to secure the covid-19 loan. And also, we created a system that helped to guide our beneficiaries on how to make good use of their fund.',
                textAlign: TextAlign.justify,
              ),

              ///Price
              SizedBox(height: 15),
              Center(
                child: RichText(text: TextSpan(
                  text: 'Price   ',
                  style: TextStyle(
                      color: KBlack,
                      fontWeight: FontWeight.w600,
                  fontSize: 17),
                  children: [
                    TextSpan(
                      text: '₦ 800,000',
                      style: TextStyle(
                        color: KGreen,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: ''),
                    )

                  ]
                )),
              )



            ],
          ),
        ),
      ),
    );
  }
}




