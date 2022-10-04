import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/my-snackbar.dart';
import '../verification-screens/email-verfication.dart';
import 'new-password.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({Key? key}) : super(key: key);

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

 TextEditingController pin1Controller = TextEditingController();
 TextEditingController pin2Controller = TextEditingController();
 TextEditingController pin3Controller = TextEditingController();
 TextEditingController pin4Controller = TextEditingController();

void pinCode(String pin1,String pin2,String pin3,String pin4, context)async{
  if(pin1.isEmpty){
    MySnackBar(context, '1st Pin Field is Empty');
  }
  else if(pin2.isEmpty){
    MySnackBar(context, '2nd Pin Field is Empty');
  }
  else if(pin3.isEmpty){
    MySnackBar(context, '3rd Pin Field is Empty');
  }
  else if(pin4.isEmpty){
    MySnackBar(context, '4th Pin Field is Empty');
  }
  else {
    var res = await dio.post('https://eigix.net/helperChain/public/api/verifyForgetPasswordOtp',
      data:
      {
        "user_id": 109,
        "forgetPasswordOtp": pin1+pin2+pin3+pin4
      },
    );
    if(res.data['status'] == 'success')
    {
      Get.to(NewPassword());
    }
    else{
      MySnackBar(context, "Enter Correct Otp");
    }}


}

class _EnterOtpState extends State<EnterOtp> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Center(child: SvgPicture.asset('assets/boardinglogo.svg')),
                  SizedBox(height: h * 0.09),

                  ///OTP Code fields
                  const Text('Enter Code',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Please Enter Code That Send\nYour Registered An Email Address',
                      style: TextStyle(color: KDarkGrey,fontSize: 16),),
                  ),



                  SizedBox(height: 50),
                  Container(
                    height: h * 0.08,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        ///1st
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: pin1Controller,
                            //to go on next input
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite,
                                ),
                              ),
                              hintText: '0',
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        VerticalDivider(thickness: 1,color: Colors.grey,indent: 22,endIndent: 22,),
                        ///2nd
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: pin2Controller,
                            //to go on next input
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite
                                ),
                              ),
                              hintText: '0',
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        VerticalDivider(thickness: 1,color: Colors.grey,indent: 22,endIndent: 22,),
                        ///3rd
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: pin3Controller,
                            //to go on next input
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite
                                ),
                              ),
                              hintText: '0',
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        VerticalDivider(thickness: 1,color: Colors.grey,indent: 22,endIndent: 22,),
                        ///4th
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: pin4Controller,
                            //to go on next input
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: KOffwhite
                                ),
                              ),
                              hintText: '0',
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  ///Verify email button
                  SizedBox(height: h * 0.08),
                  MyElevatedButton(
                      onPressed: (){

                        pinCode(pin1Controller.text.toString(),pin2Controller.text.toString(),
                            pin3Controller.text.toString(),pin4Controller.text.toString(),context);

                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('NEXT',
                        style: TextStyle(fontSize: 17),)),

                  SizedBox(height: h * 0.028),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Get.back();
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
}
