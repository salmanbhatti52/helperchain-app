import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../widgets/loan-table.dart';

class QuickLoan extends StatefulWidget {
  const QuickLoan({Key? key}) : super(key: key);

  @override
  State<QuickLoan> createState() => _QuickLoanState() ;
}

class _QuickLoanState extends State<QuickLoan> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: KWhite,
        drawer: MyDrawer(),
        appBar: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: AppBar(
                elevation: 0,
                backgroundColor: KWhite,
                centerTitle: true,
                leading: IconButton(
                    onPressed: (){
                      scaffoldKey.currentState?.openDrawer();
                    }, icon: SvgPicture.asset('assets/drawer.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'Quick Loan',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/bvnimage.png'),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
            child: Column(
              children: [

                SizedBox(height: h * 0.01),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: h * 0.125,
                  width: w,
                  decoration: BoxDecoration(
                    color: KGreen,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          HeadingText(
                            text: 'Available Loan Credit',
                            textWeight: FontWeight.w600,
                            textColor: KBlack,
                            size: 14.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/nigeria.svg',height: 21,color: KWhite,),
                                const SizedBox(width: 8,),
                                HeadingText(
                                  text: '100,000,000 ',
                                  textWeight: FontWeight.bold,
                                  textColor: KWhite,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      VerticalDivider(color: Colors.black45,thickness: 0.5,indent: 8,endIndent: 8,),
                      Column(
                        children: [
                          SvgPicture.asset('assets/recheck.svg',height: 30,color: KWhite,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Recheck'),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                ///Name
                SizedBox(height: h * 0.035),
                Row(
                  children: [
                    Container(
                      width: w * 0.26,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/personicon.svg',color: KBlack,height: 21),
                          SizedBox(width: w * 0.03),
                          HeadingText(text: 'Name',
                          textWeight: FontWeight.w600,
                          size: 15,)
                        ],
                      ),
                    ),
                    Container(
                      width: w * 0.62,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeadingText(
                            text: 'Ross Geller',
                          ),
                          SvgPicture.asset('assets/editsimple.svg',height: 18,),
                        ],
                      ),
                    )
                  ],
                ),
                ///Phone #
                SizedBox(height: h * 0.015),
                Row(
                  children: [
                    Container(
                      width: w * 0.26,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/phoneicon.svg',color: KBlack,height: 20,),
                          SizedBox(width: w * 0.03),
                          HeadingText(text: 'Phone#',
                            textWeight: FontWeight.w600,
                            size: 15,)
                        ],
                      ),
                    ),
                    Container(
                      width: w * 0.62,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeadingText(
                            text: '+1 123 456 789',
                          ),
                          SvgPicture.asset('assets/editsimple.svg',height: 18,),
                        ],
                      ),
                    )
                  ],
                ),
                ///Email
                SizedBox(height: h * 0.015),
                Row(
                  children: [
                    Container(
                      width: w * 0.26,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/personicon.svg',color: KBlack,height: 20,),
                          SizedBox(width: w * 0.03),
                          HeadingText(text: 'Name',
                            textWeight: FontWeight.w600,
                            size: 16,)
                        ],
                      ),
                    ),
                    Container(
                      width: w * 0.62,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeadingText(
                            text: 'Rossgellergmail.com',
                          ),
                          SvgPicture.asset('assets/editsimple.svg',height: 18,),
                        ],
                      ),
                    )
                  ],
                ),


                SizedBox(height: h * 0.1),
                SvgPicture.asset('assets/loan.svg'),
                SizedBox(height: h * 0.025),
                HeadingText(
                  text: 'Enter Loan Amount Required',
                  textWeight: FontWeight.w600,
                  size: 17,
                ),

                ///Enter Loan
                SizedBox(height: h * 0.05),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "₦ 100,000,000",
                      hintStyle: TextStyle(fontFamily: ''),
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                ///Submit
                SizedBox(height: h * 0.07),
                MyElevatedButton(
                    onPressed: (){
                      showModalBottomSheet<void>(
                        backgroundColor: KWhite,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetLoan();
                        },
                      );
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'SUBMIT',
                      textWeight: FontWeight.w600,
                      textColor: KWhite,
                      size: 17,
                    )),







              ],
            ),
          ),
        ),
      ),
    );
  }
}




class BottomSheetLoan extends StatefulWidget {
  const BottomSheetLoan({Key? key}) : super(key: key);
  @override
  State<BottomSheetLoan> createState() => _BottomSheetLoanState();
}

class _BottomSheetLoanState extends State<BottomSheetLoan> {

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.6,
      width: w,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [

              const SizedBox(height: 5,),
              Divider(thickness: 5,color: Colors.grey.shade400,indent: 100,endIndent: 100,),
              const SizedBox(height: 10),
              HeadingText(
                text: 'Loan Repayment Details',
                textWeight: FontWeight.bold,
                size: 17.5),

              SizedBox(height: h * 0.025),
              HeadingText(
                text: 'Amount to be paid back',
                textColor: KBlue,
                textWeight: FontWeight.w600,
              ),
              SizedBox(height: h * 0.015),
              HeadingText(
                text: ' ₦ 100,000,000',
                textWeight: FontWeight.w600,
                textColor: KBlue,
                size: 27,
                fontFamily: '',
              ),

              ///Payment Schedule
              SizedBox(height: h * 0.03),
              Row(
                children: [
                  HeadingText(
                    text: 'Payment Schedule',
                    textWeight: FontWeight.w600,
                    size: 17,
                  )
                ],
              ),
              ///Table
              SizedBox(height: h * 0.008),
              LoanTable(),

              SizedBox(height: h * 0.015),
              Row(
                children: [
                  HeadingText(
                    text: 'Loan Application Fees',
                    textWeight: FontWeight.w600,
                    size: 17,
                  )
                ],
              ),
              SizedBox(height: h * 0.03),
              HeadingText(
                text: '₦ 50',
                textWeight: FontWeight.w600,
                size: 27,
                textColor: KBlue,
                fontFamily: '',
              ),

              ///Button
              SizedBox(height: h * 0.04),
              MyElevatedButton(
                  onPressed: (){
                    Get.back();
                  },
                  width: w,
                  borderRadius: BorderRadius.circular(30),
                  child: HeadingText(
                    text: 'APPLY',
                    textWeight: FontWeight.w600,
                    textColor: KWhite,
                    size: 17,
                  )),
              SizedBox(height: 5),


            ],
          ),
        ),
      ),
    );
  }
}
