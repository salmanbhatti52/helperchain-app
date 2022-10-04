import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../Variables/globalVariables.dart';

class DashTab1 extends StatefulWidget {
  const DashTab1({Key? key}) : super(key: key);

  @override
  State<DashTab1> createState() => _DashTab1State();
}

class _DashTab1State extends State<DashTab1> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
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
              child: Container(
                padding: EdgeInsets.only(left: 5,right: 5,top: 8,bottom: 5),
                width: w,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///1st Column
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///Survival Fund
                              Row(
                                children: [
                                  Container(
                                    child: HeadingText(
                                      text: 'Survival Fund',
                                      textWeight: FontWeight.w600,
                                      size: 14.5,
                                    ),
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
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: KGreen,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/nirsalicon.png'),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.023,),
                                  Container(
                                    width: w * 0.23,
                                    child: HeadingText(
                                      text: 'NIRSAL',
                                      textWeight: FontWeight.w600,
                                      size: 13,
                                    ),
                                  ),
                                  Container(
                                    width: w * 0.25,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Category:',
                                        style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Loan', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ///2nd Column
                          Column(
                            children: [
                              Container(
                                  color: KPink,
                                  child: Image.asset('assets/nirsal.png')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ///Trust Level-line
                    SizedBox(height: 13),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Trust Level',style: TextStyle(fontSize:11.5,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                            SizedBox(width: 6),
                            Container(
                              width: w * 0.3,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 3,
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
                                  Container(
                                    margin: EdgeInsets.only(left: 4),
                                    height: 17,
                                    width: 17,
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: HeadingText(
                                text: 'See details',
                                textWeight: FontWeight.w600,
                                textColor: KBlue,
                                size: 11,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5,bottom: 3),
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: KBlue
                              ),
                              child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 11,)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///2
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(left: 5,right: 5,top: 8,bottom: 5),
                width: w,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///1st Column
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///Survival Fund
                              Row(
                                children: [
                                  Container(
                                    child: HeadingText(
                                      text: 'Survival Fund',
                                      textWeight: FontWeight.w600,
                                      size: 14.5,
                                    ),
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
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: KGreen,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/boi.png'),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.023,),
                                  Container(
                                    width: w * 0.23,
                                    child: HeadingText(
                                      text: 'BOI',
                                      textWeight: FontWeight.w600,
                                      size: 13,
                                    ),
                                  ),
                                  Container(
                                    width: w * 0.25,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Category:',
                                        style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Loan', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ///2nd Column
                          Column(
                            children: [
                              Image.asset('assets/bank.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ///Trust Level-line
                    SizedBox(height: 13),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Trust Level',style: TextStyle(fontSize:11.5,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                            SizedBox(width: 6),
                            Container(
                              width: w * 0.3,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 3,
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
                                  Container(
                                    margin: EdgeInsets.only(left: 4),
                                    height: 17,
                                    width: 17,
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: HeadingText(
                                text: 'See details',
                                textWeight: FontWeight.w600,
                                textColor: KBlue,
                                size: 11,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5,bottom: 3),
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: KBlue
                              ),
                              child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 11,)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///3
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(left: 5,right: 5,top: 8,bottom: 5),
                width: w,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///1st Column
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///Survival Fund
                              Row(
                                children: [
                                  Container(
                                    child: HeadingText(
                                      text: 'Theoart 1.8m Grants',
                                      textWeight: FontWeight.w600,
                                      size: 14.5,
                                    ),
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
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: KGreen,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/ngicon.png'),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.023,),
                                  Container(
                                    width: w * 0.23,
                                    child: HeadingText(
                                      text: 'Nigeria Grant Community',
                                      textWeight: FontWeight.w600,
                                      size: 13,
                                    ),
                                  ),
                                  Container(
                                    width: w * 0.25,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Category:',
                                        style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w600),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Grant', style: TextStyle(color: KGreen,fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ///2nd Column
                          Column(
                            children: [
                              Image.asset('assets/ngimage.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ///Trust Level-line
                    SizedBox(height: 13),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Trust Level',style: TextStyle(fontSize:11.5,color:  Colors.grey.shade400,fontWeight: FontWeight.w600),),
                            SizedBox(width: 6),
                            Container(
                              width: w * 0.3,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 3,
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
                                  Container(
                                    margin: EdgeInsets.only(left: 4),
                                    height: 17,
                                    width: 17,
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: HeadingText(
                                text: 'See details',
                                textWeight: FontWeight.w600,
                                textColor: KBlue,
                                size: 11,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5,bottom: 3),
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: KBlue
                              ),
                              child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: KWhite,size: 11,)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
