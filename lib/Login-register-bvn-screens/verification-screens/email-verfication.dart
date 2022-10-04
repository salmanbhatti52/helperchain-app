import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/login-register-bvn-screens/verification-screens/phone-verification.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Auth/services/dio-service.dart';
import '../../widgets/my-snackbar.dart';
import '../../widgets/my-text.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}
  Dio dio = Dio();

TextEditingController pincode = TextEditingController();

void login(String userid,otp,context)async{

  if(otp.isEmpty) {
    MySnackBar(context, 'Pin Code Input is Empty');
  }
  else{
    var res = await dio.post('https://eigix.net/helperChain/public/api/verifyMailOtp',
      data: {
        "user_id": userid,
        "otp": otp
      },
    );





    if(res.data['status'] == 'success'){

    }
    else{
      MySnackBar(context, 'Pin Code is Incorrect');
    }

  }
}


class _EmailVerificationState extends State<EmailVerification> {
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
                        text: 'Email Verification',
                        size: 22,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),

                  SvgPicture.asset('assets/1234image.svg',width: 400,),
                  SizedBox(height: h * 0.02),

                  DescriptionText(
                    text: 'Please enter the verification code sent\n'
                        'to your email address below, check your\n'
                        'spam folder of you do not receive it in\n'
                        'your inbox.',
                    textColor: KBlack,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: h * 0.032),
                  SvgPicture.asset('assets/emailver1.svg',width: 270,),

                  SizedBox(height: h * 0.025),
                  ///OTP Code fields
                  Row(
                    children: const [
                      Text('Enter Code',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
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
                      fieldHeight: 55,
                      fieldWidth: 75,
                       activeFillColor: KOffwhite,
                      // hasError ? Colors.orange : Colors.white,
                    ),

                    controller: pincode,
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    textStyle: const TextStyle(fontSize: 16, height: 1.6),
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
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

                        // Get.to(PhoneVerification());

                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('VERIFY EMAIL',
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


  // void getEmojis() async {
  //   var response;
  //   response = await DioService.get('get_all_emoji');
  //   print("response------ from emoji aapi-----");
  //   print(response);
  //   if(response['status']=='success'){
  //     var jsonData= response['data'] as List;
  //     emojies= jsonData.map<GetEmojis>((e) => GetEmojis.fromJson(e)).toList();
  //     print("response------ emojies model data-----");
  //     print(emojies?.length);
  //     for(int i= 0; i<emojies!.length; i++){
  //       print(emojies![i].path);
  //       tabs.add(
  //         CategoryItem(
  //             isSelected: selected==1?true:false,
  //             icon: 'assets/emojis/${emojies![i].path}',
  //             onTap: (){
  //               loadPosts(emojies![i].id!);
  //
  //               setState(() {
  //
  //               });
  //             }),
  //       );
  //
  //       tabsItems.add(
  //           FullTransition(cateID: emojies![i].id!)
  //       );
  //     }
  //
  //     dataLoaded = true;
  //     setState(() {
  //
  //     });
  //
  //
  //   }
  //   else{
  //     print(response['message']);
  //     showCustomSnackBar(response['message']);
  //   }
  // }


}
