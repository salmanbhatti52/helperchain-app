import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../widgets/my-button.dart';
import '../bvn-screens/confirmation-bvn.dart';

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: KWhite,
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
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
                      textWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                      size: 20,
                    ),

                  ],
                ),

              Column(
                children: [

                  ///Verify email button
                  SizedBox(height: h * 0.379 ),
                  MyElevatedButton(
                      onPressed: (){
                        Get.to(ConfirmationBVN());
                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('CONTINUE',
                        style: TextStyle(fontSize: 17),)),

                  SizedBox(height: h * 0.028),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/backarrow.svg')),
                    ],
                  ),

                ],
              ),


              ],
            ),
          ),
    ));
  }
}
