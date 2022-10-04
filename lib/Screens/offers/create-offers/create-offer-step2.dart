import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:helpers_chain/widgets/review-score.dart';
import 'package:hive/hive.dart';

import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import '../../Store/my-store-items/add-my-store.dart';
import 'create-offer-step3.dart';

class CreateOfferStep2 extends StatefulWidget {
  const CreateOfferStep2({Key? key}) : super(key: key);

  @override
  State<CreateOfferStep2> createState() => _CreateOfferStep2State();
}
  bool score = false;

class _CreateOfferStep2State extends State<CreateOfferStep2> {
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
                  text: 'Create Offer',
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

                Center(child: SvgPicture.asset('assets/step2.svg',width: w,)),

                ///Rating
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(
                      text: 'Partner Trust Level',
                      textColor: KBlack,
                      textWeight: FontWeight.w600,
                      size: 16,
                    ),

                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 24,
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
                        SizedBox(width: w * 0.015),
                        HeadingText(
                          text: '(4.0)',
                          textColor: KDarkGrey,
                        )
                      ],
                    ),
                  ],
                ),
                ///Review Score
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(
                      text: 'Review Score',
                      textColor: KBlack,
                      textWeight: FontWeight.w600,
                      size: 16,
                    ),
                    ReviewScore(),
                  ],
                ),


                SizedBox(height: 20),
                const Text('Amount',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: '1012, Amsterdam, Noord-Holand',
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/amount.svg',height: 20,),
                  ),
                  maxLines: 1,
                ),

                SizedBox(height: 20),
                const Text('Amount Requested',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: '₦ 000,000,000,000,000',
                  hintStyle: TextStyle(
                    fontFamily: ''
                  ),
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/wallet.svg',height: 20,),
                  ),
                  maxLines: 1,
                ),


                SizedBox(height: 20),
                const Text('Application Fee',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: '₦ 000',
                  hintStyle: TextStyle(
                      fontFamily: ''
                  ),
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/wallet.svg',height: 20,),
                  ),
                  maxLines: 1,
                ),


                SizedBox(height: 20),
                const Text('Summary About Offer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 110,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Write here',
                  bgColor: KOffwhite,
                  maxLines: 3,
                  prefixicon: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){},
                      icon: SvgPicture.asset('assets/editsimple.svg',height: 20,),
                      ),
                    ],
                  ),

                ),

                SizedBox(height: 20),
                const Text('Full Description About Offer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyTextField(
                  height: 180,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Write here',
                  bgColor: KOffwhite,
                  maxLines: 3,
                  prefixicon: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset('assets/editsimple.svg',height: 20,),
                      ),
                    ],
                  ),

                ),

                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){
                      Get.to(CreateOfferStep3());
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'NEXT',
                      textColor: KWhite,
                      textWeight: FontWeight.w600,
                      size: 17,
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
