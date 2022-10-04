import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/login-register-bvn-screens/verification-screens/subscribe-as-member.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-snackbar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/my-text.dart';

class PhoneVerification extends StatefulWidget {
    String? varificationID;
   PhoneVerification({Key? key, this.varificationID,}) : super(key: key);
  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {

  TextEditingController optController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
              child: Column(
                children: [

                  Row(
                    children: [
                      HeadingText(
                        text: 'Phone Verification',
                        size: 22,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),

                  SvgPicture.asset('assets/1234image2.svg',width: 400,),
                  SizedBox(height: h * 0.02),

                  DescriptionText(
                    text: 'Please enter the verification code sent\n'
                        'to your phone number below.',
                    textColor: KBlack,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: h * 0.058),
                  SvgPicture.asset('assets/phonever.svg',width: 270,),

                  SizedBox(height: h * 0.025),
                  ///OTP Code fields
                  Row(
                    children: const [
                      Text('Enter Code',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  PinCodeTextField(
                    controller: optController,
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    animationType: AnimationType.fade,
                    hintCharacter: '0',

                    pinTheme: PinTheme(
                      selectedFillColor: KOffwhite,
                      selectedColor: KOffwhite,
                      inactiveFillColor: KOffwhite,
                      shape: PinCodeFieldShape.box,
                      inactiveColor: KOffwhite,
                      activeColor: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                      fieldHeight: h * 0.065,
                      fieldWidth: w * 0.145,
                      activeFillColor: KOffwhite,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    textStyle: const TextStyle(fontSize: 16, height: 1.6),
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    // controller: textEditingController,
                    keyboardType: TextInputType.number,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      return true;
                    },
                  ),

                  SizedBox(height: h * 0.023),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Didn\'t Received the Code? '),
                      Text('RESEND CODE',style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: KGreen,
                      ),

                      ),
                    ],
                  ),

                  ///Verify email button
                  SizedBox(height: h * 0.02),
                  MyElevatedButton(

                      onPressed: (){
                        _verifyOtp(widget.varificationID);
                        // Get.to(const SubscribeAsMember());
                      },

                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('VERIFY PHONE',
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
            ),
          ),
        ));
  }

  // Future<void> verifyOtp(varificationID) async {
  //   print('-------------varificationID-------------------');
  //   print(varificationID);
  //   PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
  //       verificationId: varificationID,
  //       smsCode: optController.text.toString());
  //
  //   print('g-=-=-=---=--=------');
  //   print(phoneAuthCredential);
  //
  //   await _auth.signInWithCredential(phoneAuthCredential);
  //
  //   if(phoneAuthCredential == 'success'){
  //     MySnackBar(context, 'Verification is SUCCESSFULL...................');
  //   }
  // }

  void _verifyOtp(varificationID) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: varificationID,
        smsCode: optController.text);
    await _auth
        .signInWithCredential(credential)
        .then((value) => {
      MySnackBar(context, "Success"),
      Get.to(SubscribeAsMember()),
    })
        .onError((FirebaseException error, stackTrace) =>
    {
      MySnackBar(context, "Incorrect Otp")
    });

  }


}
