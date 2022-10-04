import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import '../../Store/my-store-items/add-my-store.dart';

class CreateOfferStep3 extends StatefulWidget {
  const CreateOfferStep3({Key? key}) : super(key: key);

  @override
  State<CreateOfferStep3> createState() => _CreateOfferStep3State();
}

class _CreateOfferStep3State extends State<CreateOfferStep3> {
  int selectedIndex = 1;
  int selectIndex = 1;
  bool selectedColor0 = false;
  bool selectedColor1 = false;
  bool selectedColor2 = false;
  bool selectedColor3 = false;
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

                Center(child: SvgPicture.asset('assets/step3.svg',width: w,)),

                SizedBox(height: 20),
                HeadingText(
                  text: 'Approval',
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),
                Row(
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
                          padding: EdgeInsets.all(2),
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: selectedIndex ==1? KGreen:KLightGray,width: 2),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedIndex ==1? KGreen:Colors.transparent,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        HeadingText(
                          text: 'Automatic',
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
                            padding: EdgeInsets.all(2),
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: selectedIndex ==2? KGreen:KLightGray,width: 2),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedIndex ==2? KGreen:Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Manual',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    )  ,
                  ],
                ),

                SizedBox(height: 20),
                const Text('Support Pictures',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/imagelogo.svg',),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/imagelogo.svg',),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/imagelogo.svg'),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/add.svg',color: Colors.black54,),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                const Text('Support Video',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(27),
                        child: Image.asset('assets/play1.png',fit: BoxFit.fill,),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(27),
                        child: Image.asset('assets/play1.png',fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(27),
                        child: Image.asset('assets/play1.png',fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/add.svg',color: Colors.black54,),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                const Text('Support Documents',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/docs.svg',),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/docs.svg'),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/docs.svg',),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.22,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: SvgPicture.asset('assets/add.svg',color: Colors.black54,),
                      ),
                    ),
                  ],
                ),


                ///Terms and Conditions
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState((){
                              selectedColor0 =! selectedColor0;
                            });
                          },
                          child: Icon(
                              Icons.check_circle,size: 20,
                              color: selectedColor0 ? Colors.blue: Colors.grey
                          ),
                        ),
                        SizedBox(width: w * 0.04),
                        HeadingText(
                          text: 'Terms and Conditions',
                          textColor: KBlue,
                          textWeight: FontWeight.w600,
                          textDecoration: TextDecoration.underline,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState((){
                              selectedColor1 =! selectedColor1;
                            });
                          },
                          child: Icon(
                              Icons.check_circle,size: 20,
                              color: selectedColor1 ? Colors.blue: Colors.grey
                          ),
                        ),
                        SizedBox(width: w * 0.04),
                        HeadingText(
                          text: 'Free',
                          textColor: KBlue,
                          textWeight: FontWeight.w600,
                          textDecoration: TextDecoration.underline,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectedColor2 =! selectedColor2;
                        });
                      },
                      child: Icon(
                          Icons.check_circle,size: 20,
                          color: selectedColor2 ? Colors.blue: Colors.grey
                      ),
                    ),
                    SizedBox(width: w * 0.04),
                    HeadingText(
                      text: 'Complete Application Form',
                      textColor: KBlue,
                      textWeight: FontWeight.w600,
                      textDecoration: TextDecoration.underline,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectedColor3 =! selectedColor3;
                        });
                      },
                      child: Icon(
                          Icons.check_circle,size: 20,
                          color: selectedColor3 ? Colors.blue: Colors.grey
                      ),
                    ),
                    SizedBox(width: w * 0.04),
                    HeadingText(
                      text: 'Available To Who',
                      textColor: KBlue,
                      textWeight: FontWeight.w600,
                      textDecoration: TextDecoration.underline,
                    )
                  ],
                ),

                ///Private / Public
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
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
                                padding: EdgeInsets.all(2),
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: selectIndex ==1? KGreen:KLightGray,width: 2),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selectIndex ==1? KGreen:Colors.transparent,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              HeadingText(
                                text: 'Private',
                                textWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              selectIndex = 2;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: selectIndex ==2? KGreen:KLightGray,width: 2),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selectIndex ==2? KGreen:Colors.transparent,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              HeadingText(
                                text: 'Public',
                                textWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        )  ,
                      ],
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          selectIndex = 3;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: selectIndex ==3? KGreen:KLightGray,width: 2),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectIndex ==3? KGreen:Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          HeadingText(
                            text: 'Apply on behalf of other',
                            textWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    )  ,
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
                      text: 'SUBMIT',
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
