import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Models/signup-model.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../profile/profile-detail.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                  text: 'Setting',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: Column(
              children: [

                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/bvnimage.png'),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: HeadingText(
                    text: 'Ross Geller',
                    size: 16,
                    textWeight: FontWeight.w600,
                  ),
                ),

                ///1
                SizedBox(height: h * 0.04),
                GestureDetector(
                  onTap: (){
                    Get.to(ProfileDetail());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.072,
                    width: w,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/sprofile.svg',height: 23,width: 23,),
                            SizedBox(width: w * 0.02),
                            DescriptionText(text: 'Profile',
                              size: 15,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: KDarkGrey,size: 20,),
                      ],
                    ),
                  ),
                ),
                ///2
                SizedBox(height: h * 0.022),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: h * 0.072,
                  width: w,
                  decoration: BoxDecoration(
                    color: KWhite,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/slock.svg',height: 23,width: 23,),
                          SizedBox(width: w * 0.03),
                          DescriptionText(text: 'Change Password',
                            size: 15,
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: KDarkGrey,size: 20,),
                    ],
                  ),
                ),
                ///3
                SizedBox(height: h * 0.022),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: h * 0.072,
                  width: w,
                  decoration: BoxDecoration(
                    color: KWhite,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/spayment.svg',height: 23,width: 23,),
                          SizedBox(width: w * 0.03),
                          DescriptionText(text: 'Payment Method',
                            size: 15,
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: KDarkGrey,size: 20,),
                    ],
                  ),
                ),
                ///4
                SizedBox(height: h * 0.022),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: h * 0.072,
                  width: w,
                  decoration: BoxDecoration(
                    color: KWhite,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, offset: Offset(3, 3), blurRadius: 6.0)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/snotification.svg',height: 23,width: 23,),
                          SizedBox(width: w * 0.03),
                          DescriptionText(text: 'Notifications',
                            size: 15,
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: KDarkGrey,size: 20,),
                    ],
                  ),
                ),

                SizedBox(height: h * 0.06),
                SvgPicture.asset('assets/boardinglogo.svg'),

                SizedBox(height: h * 0.04),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                  Padding(
                   padding: const EdgeInsets.only(left: 18),
                    child: SvgPicture.asset('assets/slogout.svg',height: 24,),
                   ),
                    SizedBox(width: 18),
                    HeadingText(
                     text: 'Logout',
                      size: 17,
                      textWeight: FontWeight.w600,
                      ),
                    ],
                 ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
