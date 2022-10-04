import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import 'create-request-step2.dart';

class CreateRequestStep1 extends StatefulWidget {
  const CreateRequestStep1({Key? key}) : super(key: key);
  @override
  State<CreateRequestStep1> createState() => _CreateRequestStep1State();
}

class _CreateRequestStep1State extends State<CreateRequestStep1> {
  List<String> CategoryItem =['Choose category here','Select Partner Type','Category 1','Category 2','Category 3', 'Category 4',];
  String? selectItem ='Choose category here';
  String? selectItem1 ='Select Partner Type';
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

                Center(child: SvgPicture.asset('assets/step1.svg',width: w,)),

                SizedBox(height: 20),
                const Text('Title of Request',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Type title here',
                  bgColor: KOffwhite,
                  maxLines: 1,
                ),

                SizedBox(height: 20),
                const Text('Cover Image',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: h * 0.25,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(60),
                    child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                  ),
                ),

                SizedBox(height: 20),
                const Text('Amount Requested',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: '₦ 000,000,000,000',
                  hintStyle: TextStyle(fontFamily: ''),
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/wallet.svg',),
                  ),
                  maxLines: 1,
                ),


                ///Description
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: h * 0.18,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: KBlue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 5),
                            HeadingText(
                              text: 'You have to be a member of HelpersChain',
                            )
                          ],
                        ),
                        HeadingText(
                          text: '    community to benefit from HelpMe!',
                        ),

                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: KBlue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 5),
                            HeadingText(
                              text: 'Donated money will be paid to beneficiary ',
                            )
                          ],
                        ),
                        HeadingText(
                          text: '    HelpersChain bank account only.',
                        ),
                      ],
                    ),
                  )
                ),


                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){
                      Get.to(CreateRequestStep2());
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
