import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';

class CreateNotice extends StatefulWidget {
  const CreateNotice({Key? key}) : super(key: key);

  @override
  State<CreateNotice> createState() => _CreateNoticeState();
}

class _CreateNoticeState extends State<CreateNotice> {
  int selectedIndex = 1;
  int selectIndex = 1;

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
                  text: 'Create Notice',
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

                ///Profile
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 135,
                      width: 135,
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
                          size: 21,
                        ),
                        SizedBox(height: h * 0.01),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 21,
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
                              size: 12,
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

                ///Product + Service
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectedIndex = 1;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedIndex ==1? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Product',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectedIndex = 2;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedIndex ==2? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Service',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                const Text('Noticeboard Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyTextField(
                  height: 59,
                  width: w,
                  bgColor: KOffwhite,
                  radius: BorderRadius.circular(30),
                  maxLines: 1,
                  hintText: 'Noticeboard name here',

                ),

                SizedBox(height: 20),
                const Text('Add Support Images',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(35),
                      height: h * 0.15,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                          color: KOffwhite,
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                    Container(
                      padding: EdgeInsets.all(35),
                      height: h * 0.15,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                    Container(
                      padding: EdgeInsets.all(35),
                      height: h * 0.15,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                  ],),


                SizedBox(height: 20),
                const Text('Full description About Offer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyTextField(
                  height: h * 0.17,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Type here',
                  bgColor: KOffwhite,
                  maxLines: 4,
                ),


                ///Private / Public
                SizedBox(height: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectIndex = 1;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectIndex ==1? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Web only is ₦1000/month',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectIndex = 2;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectIndex ==2? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Web and mobile  is ₦1500/month',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectIndex = 3;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectIndex ==3? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Web+ mobile + chat  ₦2000/month',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectIndex = 4;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 19,
                            width: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: KWhite, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius:3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectIndex ==4? KGreen:Colors.grey.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Featured  ₦2500/month',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),


                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){},
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'POST NOTICE',
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
