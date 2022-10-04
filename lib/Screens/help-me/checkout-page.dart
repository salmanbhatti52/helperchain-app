import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../widgets/my-button.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                ),
              ),
              preferredSize: Size(0, 80)),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 40),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(height: h * 0.175,),

                  Column(
                    children: [
                      Center(
                        child: HeadingText(
                          text: 'card(default option)\n'
                              '            or ussd',
                          textAlign: TextAlign.center,
                          size: 20,
                          textWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      HeadingText(
                        text: 'here the default\n'
                            'design will be\n'
                            'shown of flutter\n'
                            'wave payment',
                        textWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                        size: 20,
                      ),

                    ],
                  ),

                  Column(
                    children: [

                      ///Verify email button
                      SizedBox(height: h * 0.33 ),
                      MyElevatedButton(
                          onPressed: (){
                          },
                          borderRadius: BorderRadius.circular(30),
                          width: w,
                          child: const Text('CONTINUE',
                            style: TextStyle(fontSize: 17),)),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ));
  }
}
