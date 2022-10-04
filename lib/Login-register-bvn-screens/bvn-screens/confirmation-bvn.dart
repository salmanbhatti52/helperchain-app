import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'verify-id.dart';

class ConfirmationBVN extends StatefulWidget {
  const ConfirmationBVN({Key? key}) : super(key: key);

  @override
  State<ConfirmationBVN> createState() => _ConfirmationBVNState();
}

class _ConfirmationBVNState extends State<ConfirmationBVN> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  SvgPicture.asset('assets/logoBVN.svg'),
                  SizedBox(height: h * 0.015),

                  SvgPicture.asset('assets/1234image4.svg',width: 400,),
                  SizedBox(height: h * 0.03),

                  Container(
                    height: h * 0.55,
                    width: w * 0.75,
                    decoration: BoxDecoration(
                      color: KWhite,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: RichText(
                              text: const TextSpan(
                                  children: [
                                    TextSpan(text: 'Enter ',style: TextStyle(fontWeight: FontWeight.bold,
                                        color: KBlack, fontSize: 21),
                                    ),
                                    TextSpan(text: 'BVN ',style: TextStyle(fontWeight: FontWeight.bold,
                                            color: KBlue, fontSize: 21),
                                    ),
                                    TextSpan(text: 'Number',style: TextStyle(fontWeight: FontWeight.bold,
                                        color: KBlack, fontSize: 21),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          const Text('for Verify Your ID',style: TextStyle(
                              color: KBlack, fontSize: 18)),

                          const SizedBox(height: 15,),
                          Row(
                            children: const [
                              Text('BVN',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                            ],
                          ),
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
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset('assets/bankicon.svg'),
                                ),
                                hintText: "32W61E98V551",
                                border: InputBorder.none,
                                labelStyle:
                                const TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),

                          const SizedBox(height: 7,),
                          Row(
                            children: const [
                              Text('First Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                            ],
                          ),
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
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset('assets/personicon.svg'),
                                ),
                                hintText: "Andy",
                                border: InputBorder.none,
                                labelStyle:
                                const TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),

                          const SizedBox(height: 7,),
                          Row(
                            children: const [
                              Text('Surname',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                            ],
                          ),
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
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset('assets/personicon.svg'),
                                ),
                                hintText: "Joe",
                                border: InputBorder.none,
                                labelStyle:
                                const TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),

                          SizedBox(height: h * 0.035,),
                          const Text('Make sure names match\nwhat is on your BVN',style: TextStyle(
                              color:KRed,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,),



                        ],
                      ),
                    ),
                  ),

                  ///Verify email button
                  SizedBox(height: h * 0.026),
                  MyElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerifyId()));
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
