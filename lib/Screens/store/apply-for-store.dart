
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/Store/my-store/my-store.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../../widgets/my-snackbar.dart';

class ApplyForStore extends StatefulWidget {
  const ApplyForStore({Key? key}) : super(key: key);

  @override
  State<ApplyForStore> createState() => _ApplyForStoreState();
}

class _ApplyForStoreState extends State<ApplyForStore> {
  final formKey1 = GlobalKey<FormState>();

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
                    }, icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'Apply For Store',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: KGreen),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/applyforstore.jpg'),
                          fit: BoxFit.fill,
                        )
                      ),

                    ),

                    SizedBox(width: w * 0.03),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                          text: 'Herry Noah',
                          textWeight: FontWeight.w600,
                          size: 21,
                        ),
                        SizedBox(height: h * 0.01),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 21,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star_rounded,
                                color: KYellow,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(width: 5),
                            HeadingText(
                              text: '(4.0)',
                              textColor: KDarkGrey,
                              size: 12,
                            )
                          ],
                        ),
                        SizedBox(height: h * 0.01),
                        RichText(
                          text: TextSpan(
                            text: 'Membership Level: ',
                            style: TextStyle(color: KBlack,fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Gold', style: TextStyle(fontWeight: FontWeight.w400)),

                            ],
                          ),
                        ),
                        SizedBox(height: h * 0.01),
                        RichText(
                          text: TextSpan(
                            text: 'Trust Level: ',
                            style: TextStyle(color: KBlack,fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '6/10', style: TextStyle(fontWeight: FontWeight.w400)),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

                SizedBox(height: h * 0.07),
                const Text('Store Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                          child: SvgPicture.asset('assets/shopicon.svg'),
                        ),
                        hintText: "andy243email.com",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: h * 0.02),
                const Text('Category',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded,color: KGreen,size: 32),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/categoryicon.svg'),
                      ),
                      hintText: "andy243@email.com",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                SizedBox(height: h * 0.03),
                const Text('Upload Store Picture',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                SizedBox(height: h * 0.01),
                Container(
                  height: h * 0.19,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: KOffwhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: SvgPicture.asset('assets/imagelogo.svg'),
                  ),
                ),

                SizedBox(height: h * 0.04),
                MyElevatedButton(
                    onPressed: (){
                      showCustomDialog2(context);
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'SEND',
                      textWeight: FontWeight.w600,
                      textColor: KWhite,
                      size: 17,
                    ))

              ],
            ),
          ),
        ),
      ),
    );
  }
  void emailValidation1() {
    const String email = 'fredrik.eilertsen@gail.com';
    final bool isValid = EmailValidator.validate(email);
  }
}



void showCustomDialog2(context) {
  double w =MediaQuery.of(context).size.width;
  showDialog(
    context: context,
    builder: (ctx) =>
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 285 ,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/sorry.svg',height: 120),
                  // Image.asset('assets/logindialog.png',height: 120,width: 120),
                  SizedBox(height: 8),
                  HeadingText(text: 'Sorry!',textColor: KGreen,textWeight: FontWeight.bold,size: 17,),
                  SizedBox(height: 12),
                  Text('Your membership status does\n'
                      'not qualify you to apply.',
                    style: TextStyle(fontSize: 11.5  ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20),
                  MyElevatedButton2(
                    onPressed: (){
                      Get.to(MyStore());
                    },
                    child: Text('OKAY'),
                    height: 50,
                    width: w * 0.6,
                    borderRadius: BorderRadius.circular(30),
                  ),

                ],
              ),
            ),
          ),
        ),
  );
}
