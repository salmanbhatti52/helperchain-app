import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Screens/help-me/help-me.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import '../../Store/my-store-items/add-my-store.dart';

class CreateRequestStep3 extends StatefulWidget {
  const CreateRequestStep3({Key? key}) : super(key: key);
  @override
  State<CreateRequestStep3> createState() => _CreateRequestStep3State();
}
class _CreateRequestStep3State extends State<CreateRequestStep3> {

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
                  text: 'Create Request',
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
                const Text('Short summary description',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                const Text('Full description',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: h * 0.17,
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

                ///Supprt docs and video
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Support Documents',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(height: 10,),
                        Container(
                          height: h*0.15,
                          width: w*0.45,
                          decoration: BoxDecoration(
                            color: KOffwhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 35),
                            child: SvgPicture.asset('assets/docs.svg',fit: BoxFit.fill,),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Support Video',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(height: 10,),
                        Container(
                          height: h*0.15,
                          width: w*0.45,
                          decoration: BoxDecoration(
                            color: KOffwhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 35),
                            child: Image.asset('assets/play1.png',fit: BoxFit.fill,),
                          ),
                        ),

                      ],
                    ),
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
                        child: SvgPicture.asset('assets/imagelogo.svg'),
                      ),
                    ),
                  ],
                ),

                ///Description
                SizedBox(height: 30),
                Center(
                  child: Container(
                      //padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                      height: h * 0.1,
                      width: w * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Center(
                          child: HeadingText(
                            text: 'Please be warned that HelpersChain investigates each request before publishing!',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      )
                  ),
                ),

                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){
                      Get.to(HelpMe());
                    },
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
