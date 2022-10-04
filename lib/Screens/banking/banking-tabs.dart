import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../Variables/globalVariables.dart';

class BankTab1 extends StatefulWidget {
  const BankTab1({Key? key}) : super(key: key);

  @override
  State<BankTab1> createState() => _BankTab1State();
}

class _BankTab1State extends State<BankTab1> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                height: h * 0.125,
                width: w,
                decoration: BoxDecoration(
                  color: KBlue,
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
                          text: 'Bank Statement',
                          textWeight: FontWeight.bold,
                          textColor: KWhite,
                          size: 25,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: HeadingText(
                            text: '01/05/2022 - 24/05/2022',
                            textColor: KWhite,
                            size: 14.5,
                          ),
                        ),

                      ],
                    ),
                    SvgPicture.asset('assets/state-down.svg',height: 30),
                  ],
                ),
              ),

              SizedBox(height: h * 0.02),
              Row(
                children: [
                  HeadingText(
                    text: 'Recent Transactions',
                    textWeight: FontWeight.w600,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(height: h * 0.018),

              ///1
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: KBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  title: Text('XYZ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                  subtitle: Text('Thursday 20 May 2022',style: TextStyle(fontWeight: FontWeight.w200,
                    fontSize: 10,),),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/nigeria.svg',color: KTeal,height: 15,width: 15,),
                        SizedBox(width: w * 0.006),
                        Text('100,000',style: TextStyle(fontWeight: FontWeight.bold,color: KTeal,fontSize: 17.5)),
                      ],
                    ),

                  ),
                ),
              ),
              ///2
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: KBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    title: Text('XYZ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                    subtitle: Text('Thursday 20 May 2022',style: TextStyle(fontWeight: FontWeight.w200,
                      fontSize: 10,),),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/nigeria.svg',color: KTeal,height: 15,width: 15,),
                          SizedBox(width: w * 0.006),
                          Text('300,000',style: TextStyle(fontWeight: FontWeight.bold,color: KTeal,fontSize: 17.5)),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
              ///3
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: KBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    title: Text('XYZ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                    subtitle: Text('Thursday 20 May 2022',style: TextStyle(fontWeight: FontWeight.w200,
                      fontSize: 10,),),
                    trailing: Container(
                      width: 106,
                      child: Row(
                        children: [
                          Text('-',style: TextStyle(fontWeight: FontWeight.bold,color: KRed)),
                          SizedBox(width: w * 0.005),
                          SvgPicture.asset('assets/nigeria.svg',color: KRed,height: 15,width: 15,),
                          SizedBox(width: w * 0.005),
                          Text('100,000',style: TextStyle(fontWeight: FontWeight.bold,color: KRed,fontSize: 17.5)),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
              ///4
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: KBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    title: Text('XYZ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                    subtitle: Text('Thursday 20 May 2022',style: TextStyle(fontWeight: FontWeight.w200,
                      fontSize: 10,),),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/nigeria.svg',color: KTeal,height: 15,width: 15,),
                          SizedBox(width: w * 0.006),
                          Text('100,000',style: TextStyle(fontWeight: FontWeight.bold,color: KTeal,fontSize: 17.5)),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DashTab2 extends StatefulWidget {
  const DashTab2({Key? key}) : super(key: key);
  @override
  State<DashTab2> createState() => _DashTab2State();
}
class _DashTab2State extends State<DashTab2> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///1
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 10,bottom: 10,right: 5),
                child: Container(
                  height: h * 0.14,
                  width: w,


                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///1st Column
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///Survival Fund
                          Row(
                            children: [
                              HeadingText(
                                text: 'Survival Fund',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              Container(
                                height: 20,
                                width: 58,
                                decoration: BoxDecoration(
                                    color: KYellow,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(child: Text('Applied',style: TextStyle(fontSize: 10),)),
                              ),

                            ],
                          ),
                          ///Nirsal
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: KGreen,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('assets/nirsalicon.png')
                                    )
                                ),
                              ),
                              SizedBox(width: w * 0.023,),
                              HeadingText(
                                text: 'NIRSAL',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              RichText(
                                text: TextSpan(
                                  text: 'Category:',
                                  style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Loan', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          ///Trust Level
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Text('Trust Level',style: TextStyle(color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                              SizedBox(width: w * 0.012),
                              RatingBar.builder(
                                itemSize: 21,
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: KYellow,
                                ),
                                onRatingUpdate: (rating) {},
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:  LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [KGreen, KBlue])
                                ),
                                child: Center(child: Icon(Icons.check,color: KWhite,size: 14,)),
                              ),
                            ],
                          ),
                        ],
                      ),

                      ///2nd Column
                      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Image.asset('assets/nirsal.png',height: 48,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: HeadingText(
                                  text: 'See details',
                                  textWeight: FontWeight.w600,
                                  textColor: KBlue,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,bottom: 3),
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: KBlue
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 12,)),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),


                ),
              ),
            ),
            ///2
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 10,bottom: 10),
                child: Container(
                  height: h * 0.14,
                  width: w,


                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///1st Column
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///Survival Fund
                          Row(
                            children: [
                              HeadingText(
                                text: 'Survival Fund',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              Container(
                                height: 20,
                                width: 58,
                                decoration: BoxDecoration(
                                    color: KYellow,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(child: Text('Applied',style: TextStyle(fontSize: 10),)),
                              ),

                            ],
                          ),
                          ///Nirsal
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: KGreen,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/boi.png'),
                                    )
                                ),
                              ),
                              SizedBox(width: w * 0.023,),
                              HeadingText(
                                text: 'BOI',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              RichText(
                                text: TextSpan(
                                  text: 'Category:',
                                  style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Loan', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          ///Trust Level
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Text('Trust Level',style: TextStyle(color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                              SizedBox(width: w * 0.012),
                              RatingBar.builder(
                                itemSize: 21,
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: KYellow,
                                ),
                                onRatingUpdate: (rating) {},
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:  LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [KGreen, KBlue])
                                ),
                                child: Center(child: Icon(Icons.check,color: KWhite,size: 14,)),
                              ),
                            ],
                          ),
                        ],
                      ),


                      ///2nd Column
                      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                          Image.asset('assets/bank.png',height: 48,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3,left: 30),
                                child: HeadingText(
                                  text: 'See details',
                                  textWeight: FontWeight.w600,
                                  textColor: KBlue,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,bottom: 3),
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: KBlue
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 12,)),
                              ),
                            ],
                          ),

                        ],
                      )


                    ],
                  ),


                ),
              ),
            ),
            ///3
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 10,bottom: 10,right: 5),
                child: Container(
                  height: h * 0.14,
                  width: w,


                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///1st Column
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///Theoart 1.8m
                          Row(
                            children: [
                              HeadingText(
                                text: 'Theoart 1.8m Grants',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              Container(
                                height: 20,
                                width: 58,
                                decoration: BoxDecoration(
                                    color: KYellow,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(child: Text('Applied',style: TextStyle(fontSize: 10),)),
                              ),

                            ],
                          ),
                          ///Nirsal
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: KGreen,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('assets/ngicon.png')
                                    )
                                ),
                              ),
                              SizedBox(width: w * 0.023,),
                              HeadingText(
                                text: 'Nigeria Grant\nCommunity',
                                textWeight: FontWeight.w600,
                                size: 15,
                              ),
                              SizedBox(width: w * 0.023,),
                              RichText(
                                text: TextSpan(
                                  text: 'Category:',
                                  style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Grant', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          ///Trust Level
                          SizedBox(height: h * 0.018),
                          Row(
                            children: [
                              Text('Trust Level',style: TextStyle(color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                              SizedBox(width: w * 0.012),
                              RatingBar.builder(
                                itemSize: 21,
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: KYellow,
                                ),
                                onRatingUpdate: (rating) {},
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:  LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [KGreen, KBlue])
                                ),
                                child: Center(child: Icon(Icons.check,color: KWhite,size: 14,)),
                              ),
                            ],
                          ),
                        ],
                      ),


                      ///2nd Column
                      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Image.asset('assets/ngimage.png',height: 55,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: HeadingText(
                                  text: 'See details',
                                  textWeight: FontWeight.w600,
                                  textColor: KBlue,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5,bottom: 3),
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: KBlue
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 12,)),
                              ),
                            ],
                          ),

                        ],
                      )


                    ],
                  ),


                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
