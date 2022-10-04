import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/Screens/profile/profile-completing.dart';
import 'package:helpers_chain/login-register-bvn-screens/register-screen.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:slider_captcha/slider_capchar.dart';

import '../Auth/mixin/data.dart';
import '../Auth/services/dio-service.dart';
import '../Models/signup-model.dart';
import '../widgets/my-snackbar.dart';
import 'forgot-new-password/forgot-password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // UserDetail profile = UserDetail();

  bool _showpassword = false;
  bool isChecked = false;
  bool iconcolor = false;
  final SliderController controller = SliderController();
  final formKey = GlobalKey<FormState>();
  Dio dio=Dio();

  TextEditingController emailaddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email,password,context)async{

    if(email.isEmpty){
      MySnackBar(context, 'Email Input is Empty');
    }
    else if(password.isEmpty) {
      MySnackBar(context, 'Password Input is Empty');
    }
    else{
        var res = await DioService.post('UserLogin',{
          "email_address": email,
          "password": password,
        },
        );

        if(res['status'] == 'success'){

          UserDetail profile = UserDetail.fromJson(res);
          print('===================');
          print(profile);
          AppData().userdetail=profile;
          print('-------------------');
          print(AppData().userdetail!.user_id);


          showModalBottomSheet<void>(
            backgroundColor: KWhite,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            context: context,
            builder: (BuildContext context) {
              return BottomSheetData1();
            },
          );
        }
        else{
          MySnackBar(context, 'Username or Password is Incorrect');
        }

    }
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
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
                  const SizedBox(height: 25),

                  HeadingText(
                    text: 'Login Now',
                    size: 22,
                    textWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 5,),
                  DescriptionText(
                    text: 'Please Enter Your Details',
                    textColor: KBlack,
                  ),
                  // Checkbox(
                  //     value: isChecked,
                  //     onChanged: (value){
                  //   isChecked = !isChecked;
                  //   setState((){
                  //
                  //   });
                  //     }),
                  const SizedBox(height: 25),
                  const Text('Email Address',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  const SizedBox(height: 10,),
                  Form(
                    key: formKey,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      height: 59,
                      width: w,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        controller: emailaddressController,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          if(email!.isNotEmpty){
                            email != null && !EmailValidator.validate(email)
                                ? MySnackBar(context, 'Invalid Email Address')
                                :null;
                          }
                      },

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
                  ),

                  const SizedBox(height: 15,),
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
                      textInputAction: TextInputAction.done,
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

                  const SizedBox(height: 12,),
                  ///Remember Me
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            setState((){
                              iconcolor =! iconcolor;
                            });
                          },
                          child: Icon(
                              Icons.check_circle,size: 20,
                              color: iconcolor ? Colors.blue: Colors.grey
                          ),
                      ),
                      const SizedBox(width: 10,),
                      const Text('Remember me'),

                    ],
                  ),

                  const SizedBox(height: 30),
                  MyElevatedButton(
                      onPressed: (){

                        login(emailaddressController.text.toString(),
                            passwordController.text.toString(),
                            context
                        );
                        ///email validation
                        final form = formKey.currentState!;
                        if(form.validate()){
                        }

                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('LOGIN',
                        style: TextStyle(fontSize: 17),)),

                  const SizedBox(height: 15),
                   Center(
                    child: GestureDetector(
                      onTap: (){
                      Get.to(ForgotPassword());
                      },
                      child: Text('Forgot Password?',style: TextStyle(
                       fontSize: 15,
                         color: KBlue,
                        fontWeight: FontWeight.w600,
                            ),),
                    ),
                  ),
                  const SizedBox(height: 8),

                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 55,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0XFF395693),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 53,
                            width: 53,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4167B5),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 0.3,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(child: SvgPicture.asset('assets/fbicon.svg'),),
                          ),
                           SizedBox(width: w * 0.012),
                          const Text('Login with Facebook',style: TextStyle(color: KWhite,fontSize: 15,fontWeight: FontWeight.w600),),

                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 55,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF14336),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 53,
                            width: 53,
                            decoration: const BoxDecoration(
                              color: Color(0xFFCC392E),
                              shape: BoxShape.circle,
                            ),
                            child: Center(child: SvgPicture.asset('assets/gmailicon.svg'),),
                          ),
                          const SizedBox(width: 10),
                          const Text('Login with Gmail',style: TextStyle(color: KWhite,fontSize: 15,fontWeight: FontWeight.w600),),

                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DescriptionText(
                        text: 'If you are not a member yet?  ',
                      ),

                      GestureDetector(
                        onTap: (){
                          Get.to(const Register());
                        },
                        child: const Text('Register',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: KBlue,

                        ),),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ));
  }


  void emailValidation() {
    const String email = 'fredrik.eilertsen@gail.com';
    final bool isValid = EmailValidator.validate(email);
  }


  }


class BottomSheetData1 extends StatefulWidget {
  const BottomSheetData1({Key? key}) : super(key: key);

  @override
  State<BottomSheetData1> createState() => _BottomSheetData1State();
}

class _BottomSheetData1State extends State<BottomSheetData1> {
  final SliderController controller1 = SliderController();

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.5,
      width: w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            const SizedBox(height: 5,),
            Divider(thickness: 5,color: Colors.grey.shade500,indent: 135,endIndent: 135,),
            const SizedBox(height: 5,),
            Row(
              children: [
                HeadingText(
                  text: 'Security Verification',
                  textWeight: FontWeight.w600,
                  size: 20,
                ),
              ],
            ),

            const SizedBox(height: 20),
            SliderCaptcha(
              title: 'Swap to complete the puzzle',
              titleStyle: const TextStyle(fontSize: 16),
              image: Image.asset(
                'assets/puzzleimage.png',
                fit: BoxFit.contain,
              ),
              colorBar: KOffwhite,
              colorCaptChar: KDarkBrown,

              controller: controller1,
              onConfirm: (value) {
                return Future.delayed(const Duration(milliseconds: 500)).then(
                      (value) {
                    controller1.create();
                    showCustomDialog1(context);

                  },
                );
              },
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Can\'t understand this?'),
                Text(' /Try another',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: KBlue,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


///Custom Dialog
void showCustomDialog1(context) {
  double w =MediaQuery.of(context).size.width;
  showDialog(
    context: context,
    builder: (ctx) =>
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          content: SizedBox(
            height: 280,
            child: Column(
              children: [
                SizedBox(height: 8),
                Image.asset('assets/logindialog.png',height: 120,width: 120),
                SizedBox(height: 8),
              Text('Your are first time login as member. You have to\n'
                    'complete and verify your profile before\n'
                    'further process. Click below button\n'
                    'to complete your profile ',
                  style: TextStyle(fontSize: 11.5  ),
                textAlign: TextAlign.center,),
                SizedBox(height: 20),
                MyElevatedButton(
                    onPressed: (){
                      Get.to(ProfileCompleting());
                    },
                    child: Text('NEXT'),
                width: w * 0.6,
                  borderRadius: BorderRadius.circular(30),
                ),

              ],
            ),
          ),
          actions: const <Widget>[],
        ),
  );
}