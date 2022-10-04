import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import '../../widgets/my-text.dart';
import 'add-bank-account.dart';

class SubscribeAsMember extends StatefulWidget {
  const SubscribeAsMember({Key? key}) : super(key: key);

  @override
  State<SubscribeAsMember> createState() => _SubscribeAsMemberState();
}

class _SubscribeAsMemberState extends State<SubscribeAsMember> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/subscribeimage.png'),
                fit: BoxFit.fill,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
              child: Column(
                children: [

                  Row(
                    children: [
                      HeadingText(
                        text: 'Subscribe As Member',
                        size: 22,
                        textColor: KWhite,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),

                  SvgPicture.asset('assets/1234image3.svg',width: 400,),

                  SizedBox(height: h * 0.058),
                  SvgPicture.asset('assets/boardinglogowhite.svg',),

                  SizedBox(height: h * 0.05),
                  HeadingText(
                    text: 'Why you need to subscribe?',
                    textColor: KGreen,
                    size: 20,
                    textWeight: FontWeight.bold,
                  ),

                  SizedBox(height: h * 0.03),
                  DescriptionText(
                    text: '"Become a full member and have\n'
                        'access to all Offers"',
                    textColor: KWhite,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: h * 0.09),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/nigeria.svg',height: h * 0.045,color: KGreen,),
                      const SizedBox(width: 8,),
                      HeadingText(
                        text: '1000 ',
                        textWeight: FontWeight.bold,
                        textColor: KGreen,
                        size: 43,
                      ),
                      HeadingText(
                        text: '/per year',
                        textColor: KBlue,
                        size: 22,
                        textWeight: FontWeight.bold,
                      ),
                    ],
                  ),



                  ///Verify email button
                  SizedBox(height: h * 0.103),
                  MyElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddBankAccount()));
                      },
                      borderRadius: BorderRadius.circular(30),
                      width: w,
                      child: const Text('SUBSCRIBE',
                        style: TextStyle(fontSize: 17),)),

                  SizedBox(height: h * 0.028),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/backarrow.svg',color: KWhite,)),
                    ],
                  ),




                ],
              ),
            ),
          ),
        ));
  }
}
