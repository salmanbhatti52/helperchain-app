import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-snackbar.dart';

import 'enter-otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
Dio dio = Dio();

TextEditingController emailController1 = TextEditingController();


void forgotpassword(String email, context)async{
  if(email.isEmpty){
    MySnackBar(context, 'Email Input is Empty');
  }
else {
  var res = await dio.post('https://eigix.net/helperChain/public/api/forGetPassword?',
    data:
    {
      "email_address": email
    },
  );
  if(res.data['status'] == 'success')
  {
    Get.to(EnterOtp());
  }
  else{
    MySnackBar(context, "Enter Correct Email");
  }}


}


class _ForgotPasswordState extends State<ForgotPassword> {
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
                  const Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Please Enter Your Registered Email Address',
                    style: TextStyle(color: KDarkGrey,fontSize: 16),),
                  ),

                  SizedBox(height: h * 0.06),
                  const Text('Email Address',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 59,
                    width: w,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      controller: emailController1,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset('assets/emailicon.svg'),
                        ),
                        hintText: "andy243email.com",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),


                  ///Verify email button
                  SizedBox(height: h * 0.08),
                  MyElevatedButton(
                      onPressed: (){

                        forgotpassword(emailController1.text.toString(),
                            context);

                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('SEND',
                        style: TextStyle(fontSize: 17),)
                  ),

                  ///back arrow
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
}
