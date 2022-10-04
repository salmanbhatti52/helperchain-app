//My User id is 109
//My User id is 109
//My User id is 109

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/login-register-bvn-screens/login-screen.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';

import '../../widgets/my-snackbar.dart';
import '../verification-screens/email-verfication.dart';
import 'enter-otp.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}
bool _showpassword = false;
bool _showpassword1 = false;

TextEditingController passwordController = TextEditingController();
TextEditingController confirmpasswordController = TextEditingController();

void newPassword(String password,String confirmpassword, context)async{
  if(password.isEmpty){
    MySnackBar(context, 'Password Field is Empty');
  }
  else if(confirmpassword.isEmpty){
    MySnackBar(context, 'Confirm Password is Empty');
  }
  else if(password.length < 6){
    Fluttertoast.showToast(msg: "Password must have 6-digits");
  }
  else if(confirmpassword.length < 6){
    Fluttertoast.showToast(msg: "Confirm Password must have 6-digits");
  }
  else {
    var res = await dio.post('https://eigix.net/helperChain/public/api/updateUserPassword',
      data:
      {
        "user_id": 109,
        "password": confirmpassword
      },
    );
    if(res.data['status'] == 'success')
    {
      Get.to(Login());
    }
    else{
      MySnackBar(context, "Enter Correct Details");
    }}


}


class _NewPasswordState extends State<NewPassword> {
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
                  const Text('New Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Please Enter New password',
                      style: TextStyle(color: KDarkGrey,fontSize: 16),),
                  ),

                  SizedBox(height: h * 0.06),
                  const Text('Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                      controller: passwordController,
                      obscureText: !_showpassword,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState((){
                              _showpassword =! _showpassword;
                            });
                          },
                          child: Icon(
                            _showpassword ? Icons.visibility : Icons.visibility_off,color: KDarkGrey,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7),
                          child: SvgPicture.asset('assets/lockicon.svg',color: KDarkGrey,),
                        ),
                        hintText: "********",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),


                  const SizedBox(height: 15,),
                  const Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                      controller: confirmpasswordController,
                      obscureText: !_showpassword1,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState((){
                              _showpassword1 =! _showpassword1;
                            });
                          },
                          child: Icon(
                            _showpassword1 ? Icons.visibility : Icons.visibility_off,color: KDarkGrey,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7),
                          child: SvgPicture.asset('assets/lockicon.svg',color: KDarkGrey,),
                        ),
                        hintText: "andy24",
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
                        if(passwordController.text!=confirmpasswordController.text){
                          MySnackBar(context, 'Password is not matching with Confirm Password');
                        }else {
                          newPassword(passwordController.text.toString(),confirmpasswordController.text.toString(), context);
                        }

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
