import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import 'create-request-step3.dart';

class CreateRequestStep2 extends StatefulWidget {
  const CreateRequestStep2({Key? key}) : super(key: key);
  @override
  State<CreateRequestStep2> createState() => _CreateRequestStep2State();
}
class _CreateRequestStep2State extends State<CreateRequestStep2> {

  List<String> CategoryItem =['Education & Learning','Netherlands','New Zealand','Jordan','UAE'];
  String? selectItem ='Netherlands';
  String? selectItem1 ='Education & Learning';
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

                Center(child: SvgPicture.asset('assets/step2.svg',width: w,)),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('First Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(height: 10,),
                        MyIconTextField1(
                          height: 59,
                          width: w*0.45,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          bgColor: KOffwhite,
                          prefixicon: IconButton(onPressed: (){},
                              icon: SvgPicture.asset('assets/personicon.svg',height: 23,)),
                          hintText: "Andy",
                          maxLines: 1,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Surname',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        const SizedBox(height: 10,),
                        MyIconTextField1(
                          height: 59,
                          width: w*0.45,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          bgColor: KOffwhite,
                          prefixicon: IconButton(onPressed: (){},
                              icon: SvgPicture.asset('assets/personicon.svg',height: 23,)),
                          hintText: "Joe",
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),
                const Text('Where do you live?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset('assets/location.svg',height: 23),
                      ),
                    ),
                    value: selectItem,
                    icon: Icon(Icons.keyboard_arrow_down_rounded,color: KGreen,size: 28),
                    // underline: SizedBox.shrink(),
                    items: CategoryItem.map((String CategoryItem) {
                      return DropdownMenuItem(
                        value: CategoryItem,
                        child: Text(CategoryItem),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem = newValue!;
                      });
                    },
                  ),
                ),

                SizedBox(height: 20),
                const Text('Postal Address',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: '1012, Amsterdam, Noord-Holand',
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/amount.svg'),
                  ),
                  maxLines: 1,
                ),


                SizedBox(height: 20),
                const Text('What are you fundraising for?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset('assets/education.svg',height: 23),
                      ),
                    ),
                    value: selectItem1,
                    icon: Icon(Icons.keyboard_arrow_down_rounded,color: KGreen,size: 28),
                    // underline: SizedBox.shrink(),
                    items: CategoryItem.map((String CategoryItem) {
                      return DropdownMenuItem(
                        value: CategoryItem,
                        child: Text(CategoryItem),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem1 = newValue!;
                      });
                    },
                  ),
                ),

                ///Description
                SizedBox(height: 30),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                    height: h * 0.15,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By Continuing, you agree to the HelperChain ',style: TextStyle(
                                      color: KBlack, fontSize: 15.5),
                                  ),
                                  TextSpan(
                                    text: 'Terms',style: TextStyle(
                                      color: KBlue, fontSize: 15.5,
                                  decoration: TextDecoration.underline),
                                  ),
                                  TextSpan(
                                    text: 'and acknowledge receipt of our',style: TextStyle(
                                      color: KBlack, fontSize: 15.5),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',style: TextStyle(
                                      color: KBlue, fontSize: 15.5,
                                      decoration: TextDecoration.underline,height: 1.8),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    )
                ),

                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 40,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){
                      Get.to(CreateRequestStep3());
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'CONTINUING',
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
