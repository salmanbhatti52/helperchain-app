import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class ApplyOffers extends StatefulWidget {
  const ApplyOffers({Key? key}) : super(key: key);

  @override
  State<ApplyOffers> createState() => _ApplyOffersState();
}

class _ApplyOffersState extends State<ApplyOffers> {
  bool iconcolor = false;

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
                  text: 'Apply Offer',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
            child: Column(
              children: [

                ///Data
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'Phone Number',
                            textWeight: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                            SvgPicture.asset('assets/phoneicon.svg'),
                            SizedBox(width: 10),
                            Text('+1 123 456 789'),
                            ],
                          ),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'Email Address',
                            textWeight: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              SvgPicture.asset('assets/emailicon.svg',),
                              SizedBox(width: 10),
                              Text('andy243@emial.com'),
                            ],
                          ),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'Your Address',
                            textWeight: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              SvgPicture.asset('assets/location.svg'),
                              SizedBox(width: 7),
                              Text('82 Studebaker Ave.Petersburg, VA 23803'),
                            ],
                          ),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'BVN Number',
                            textWeight: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              SvgPicture.asset('assets/bvn.svg'),
                              SizedBox(width: 10),
                              Text('01234567890'),
                            ],
                          ),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                            text: 'Application Fee',
                            textWeight: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              SvgPicture.asset('assets/appfee.svg'),
                              SizedBox(width: 10),
                              HeadingText(
                                text: '₦ 50.00',
                                fontFamily: '',
                              ),
                            ],
                          ),

                        ],
                      ),


                    ),
                  ),
                ),

                ///Apply on behalf
                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState((){
                            iconcolor =! iconcolor;
                          });
                        },
                        child: Icon(
                            Icons.check_circle,size: 20,
                            color: iconcolor ? Colors.blue: Colors.grey
                        ),
                      ),
                      const SizedBox(width: 10),
                      HeadingText(
                        text: 'Apply on behalf of everyone',
                        textWeight: FontWeight.w600,
                      ),

                    ],
                  ),
                ),

                ///Submit
                SizedBox(height: h * 0.11),
                MyElevatedButton(
                    onPressed: (){},
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'SUBMIT',
                      textWeight: FontWeight.w600,
                      textColor: KWhite,
                      size: 17,
                    ))


              ],
            ),



          ),
        ),
      ),
    );
  }
}
