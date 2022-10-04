
import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/Auth/mixin/data.dart';
import 'package:helpers_chain/Models/signup-model.dart';
import 'package:helpers_chain/Auth/services/dio-service.dart';
import 'package:helpers_chain/login-register-bvn-screens/verification-screens/email-verfication.dart';
import 'package:helpers_chain/login-register-bvn-screens/verification-screens/phone-verification.dart';
import 'package:helpers_chain/login-register-bvn-screens/verification-screens/subscribe-as-member.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:slider_captcha/slider_capchar.dart';
import '../widgets/my-snackbar.dart';
import '../widgets/my-textfield.dart';
import 'login-screen.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  UserDetail profile = UserDetail();

  String? pass;
  bool _showpassword = false;
  final SliderController controller = SliderController();
  ///phone
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationid = "";
  ///email validation
  final formKey1 = GlobalKey<FormState>();
  Dio dio=Dio();

  TextEditingController firstnameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController(text: "+92");
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void signup(String firstname,String surname,String username,String phonenumber,String email,password,context)async{

    if(firstname.isEmpty){
      MySnackBar(context, 'First Name Input is Empty');
    }
    else if(surname.isEmpty) {
      MySnackBar(context, 'Surname Input is Empty');
    }
    else if(username.isEmpty) {
      MySnackBar(context, 'User Name Input is Empty');
    }
    else if(phonenumber.isEmpty) {
      MySnackBar(context, 'Phone Number Input is Empty');
    }
    else if(phonenumber.length < 13) {
      Fluttertoast.showToast(msg: "Phone Number must have 13-digits");
    }
    else if(email.isEmpty){
      MySnackBar(context, 'Email Input is Empty');
    }
    else if(password.isEmpty){
      MySnackBar(context, 'Password Input is Empty');
    }
    else if(password.length < 6){
      Fluttertoast.showToast(msg: "Password must have 6-digits");
    }
    else {
      try {
        var res = await DioService.post(
          'UserRegister',
          {
          "first_name": firstname,
          "surname": surname,
          "username": username,
          "phone_number": phonenumber,
          "email_address": email,
          "password": password,
        },
        );
        print('===============================================');

        if (res.data['status'] == 'success') {

          UserDetail userdetail = UserDetail.fromJson(res);
          print('=-=-=-=-=-=-=-=-=');
          print(userdetail);
          AppData().userdetail=profile;
          print('=-=-=-=-=-=-=-=-=');
          print(AppData().userdetail);



          ///Bottom Sheet
          showModalBottomSheet<void>(
            backgroundColor: KWhite,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            context: context,
            builder: (BuildContext context) {
              double h = MediaQuery
                  .of(context)
                  .size
                  .height;
              double w = MediaQuery
                  .of(context)
                  .size
                  .width;
              return Container(
                height: h * 0.5,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 5,),
                      Divider(thickness: 5,
                        color: Colors.grey.shade500,
                        indent: 135,
                        endIndent: 135,),
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
                        controller: controller,
                        onConfirm: (value) async {
                          debugPrint(value.toString());
                          return await Future.delayed(
                              const Duration(microseconds: 800)).then(
                                (value) {
                              controller.create.call();
                              Get.to(PhoneVerification(
                                varificationID: verificationid,));
                            },
                          );
                        },
                      ),

                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Can\'t understand this?'),
                          Text(' /Try another', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: KBlue,),),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
        else {
          showCustomSnackBar(res.data['message']);
        }
      }
      catch(e){
        print("I am here");
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
              padding: const EdgeInsets.only(left: 12,right: 12,top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: h * 0.04),
                  HeadingText(
                    text: 'Register Now',
                    size: 22,
                    textWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 5,),
                  DescriptionText(
                    text: 'Please Enter Your Following Details',
                    textColor: KBlack,
                  ),

                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('First Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                          const SizedBox(height: 10,),
                          MyIconTextField1(
                            controller: firstnameController,
                            height: 59,
                            width: w*0.45,
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.text,
                            bgColor: KOffwhite,
                            prefixicon: IconButton(onPressed: (){},
                                icon: SvgPicture.asset('assets/personicon.svg',height: 23,)),
                            hintText: "Andy",
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Surname',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                          const SizedBox(height: 10,),
                          MyIconTextField1(
                            controller: surnameController,
                            height: 59,
                            width: w*0.45,
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.text,
                            bgColor: KOffwhite,
                            prefixicon: IconButton(onPressed: (){},
                                icon: SvgPicture.asset('assets/personicon.svg',height: 23,)),
                            hintText: "Joe",
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 15,),
                  const Text('Make sure names match what is on your BVN',style: TextStyle(color:KRed,fontWeight: FontWeight.w500)),
                  const SizedBox(height: 15,),

                  const Text('Username',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                      controller: usernameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SvgPicture.asset('assets/checkicon.svg'),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset('assets/personicon.svg'),
                        ),
                        hintText: "AndyJoe245",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),
                  const Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                      controller: phoneController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset('assets/phoneicon.svg'),
                        ),

                        hintText: "1234567890",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),
                  const Text('Email Address',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  const SizedBox(height: 10,),
                  Form(
                    key: formKey1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      height: 59,
                      width: w,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        controller: emailController,
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
                            _showpassword ? Icons.visibility : Icons.visibility_off,color: KGreen,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(7),
                          child: SvgPicture.asset('assets/lockicon.svg'),
                        ),
                        hintText: "********",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  MyElevatedButton(
                     onPressed: () {

                       signup(firstnameController.text.toString(),
                           surnameController.text.toString(),
                           usernameController.text.toString(),
                           phoneController.text.toString(),
                           emailController.text.toString(),
                           passwordController.text.toString(),
                           context);
                       ///email validation
                       final form = formKey1.currentState!;
                       if(form.validate()){
                       }
                       ///phone
                       // fetchOtp();
                     },
                     borderRadius: BorderRadius.circular(30),
                     width: w,
                     child: const Text('REGISTER',
                       style: TextStyle(fontSize: 17),)
                  ),

                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Center(
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
                  ),

                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Center(
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
                  ),

                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DescriptionText(
                        text: 'If you are already a member just?  ',
                      ),

                      GestureDetector(
                        onTap: (){
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) => Login()),
                          //         (Route<dynamic> route) => false);
                          Get.to(const Login());
                        },
                        child: const Text('Log In',style: TextStyle(
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

  void emailValidation1() {
    const String email = 'fredrik.eilertsen@gail.com';
    final bool isValid = EmailValidator.validate(email);
  }

// Future<void> fetchOtp() async {
//   await _auth.verifyPhoneNumber(
//     phoneNumber: phoneController.text,
//
//     verificationCompleted: (PhoneAuthCredential credential) async{
//     await _auth.signInWithCredential(credential);
//       },
//
//     verificationFailed: (FirebaseAuthException e){
//       if(e.code == 'invalid-phone-number'){
//         print('Invalid Phone Number');
//       }
//     },
//
//     codeSent: (String verificationid, int? resendToken)async{
//        this.verificationid = verificationid;
//        },
//     codeAutoRetrievalTimeout: (String verificationId){},
//   );
// }

}


