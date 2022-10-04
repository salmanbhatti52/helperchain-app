import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../../Variables/globalVariables.dart';
import '../apply-for-store.dart';

class StoreTab1 extends StatefulWidget {
  const StoreTab1({Key? key}) : super(key: key);

  @override
  State<StoreTab1> createState() => _StoreTab1State();
}

class _StoreTab1State extends State<StoreTab1> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [

              SizedBox(height: 40),
              Center(child: SvgPicture.asset('assets/mystore.svg')),

              SizedBox(height: 50),
              HeadingText(
                text: 'No Store!',
                textWeight: FontWeight.w600,
                size: 17,
              ),
              SizedBox(height: 10),
              Text('You do not have\n'
                  'merchant account setup.',
              style: TextStyle(color: KDarkGrey,),
              textAlign: TextAlign.center,),

              SizedBox(height: 90),
              MyElevatedButton(
                  onPressed: (){
                    Get.to(ApplyForStore());
                  },
                width: w,
                borderRadius: BorderRadius.circular(30),
                  child: HeadingText(
                    text: 'APPLY FOR MERCHANT ACCOUNT',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
