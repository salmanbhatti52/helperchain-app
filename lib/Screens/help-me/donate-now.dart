import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:helpers_chain/widgets/my-textfield.dart';

import 'checkout-page.dart';

class DonateNow extends StatefulWidget {
  const DonateNow({Key? key}) : super(key: key);
  @override
  State<DonateNow> createState() => _DonateNowState();
}
class _DonateNowState extends State<DonateNow> {
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
                  text: 'Donate Now',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
            child: Column(
              children: [

                Center(
                  child: HeadingText(
                    text: 'Username of Person Donating',
                    textColor: KGreen,
                    size: 15.5,
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        text: 'Name of HelpMe! Request',
                        textWeight: FontWeight.w600,
                        size: 16,
                      ),
                      HeadingText(
                        text: 'Lorem ipsum',
                      ),
                    ],
                  ),
                ),

                ///Text_Field
                const SizedBox(height: 25),
                 Row(
                   children: [
                     Text('Email Address',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                   ],
                 ),
                const SizedBox(height: 10),
                MyTextField(
                  height: 59,
                  width: w,
                  bgColor: KOffwhite,
                  radius: BorderRadius.circular(30),
                  hintText: '₦ 000,000,000,000,000',
                  hintStyle: TextStyle(fontFamily: ''),
                  prefixicon: IconButton(onPressed: (){},
                      icon: SvgPicture.asset('assets/wallet.svg')),
                ),

                SizedBox(height: h * 0.5),
                MyElevatedButton(onPressed: (){
                  Get.to(Checkout());
                },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'NEXT',
                      size: 17,
                      textWeight: FontWeight.w600,
                      textColor: KWhite,
                    ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
