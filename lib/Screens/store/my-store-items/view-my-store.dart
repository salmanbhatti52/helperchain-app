import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/Store/my-store-items/edit-my-store.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/my-button.dart';


class ViewMyStore extends StatefulWidget {
  const ViewMyStore({Key? key}) : super(key: key);
  @override
  State<ViewMyStore> createState() => _ViewMyStoreState();
}

  final PageController _IndController = PageController();


class _ViewMyStoreState extends State<ViewMyStore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Top Image
            Container(
              height: h * 0.6,
              width: w,
              child: Stack(
                children: [
                  PageView(
                    controller: _IndController,
                    onPageChanged: (index){
                      setState((){});
                      },
                    children:  [
                      Image.asset('assets/itemdetail.jpg',fit: BoxFit.cover),
                      Image.asset('assets/itemdetail1.jpg',fit: BoxFit.cover),
                      Image.asset('assets/itemdetail.jpg',fit: BoxFit.cover),
                      Image.asset('assets/itemdetail1.jpg',fit: BoxFit.cover),
                      Image.asset('assets/itemdetail.jpg',fit: BoxFit.cover),
                    ],
                  ),
                  SvgPicture.asset('assets/shadow.svg',width: w,),
                  Container(
                    height: h * 0.12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: AppBar(
                        leading: IconButton(
                          onPressed: (){
                            Get.back();
                          }, icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KWhite,)),
                        backgroundColor: Colors.transparent,
                        title: Text('Details of Item'),
                        centerTitle: true,
                        actions: [
                          GestureDetector(
                            onTap: (){
                              showCustomDialog3(context);
                            },
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: KRed,
                              ),
                              child: Center(child: SvgPicture.asset(
                                'assets/myStore/delete.svg',
                                color: KWhite,
                                height: 18,)),
                            ),
                          ),
                          SizedBox(width: w * 0.03),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: (){
                                Get.to(EditMyStore());
                              },
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient:  LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [KGreen, KBlue])
                                ),
                                child: Center(child: SvgPicture.asset(
                                  'assets/myStore/edit.svg',
                                  color: KWhite,
                                  height: 16,)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///Indicator
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: SmoothPageIndicator(
                    controller: _IndController,
                    count: 5,
                    effect: WormEffect(
                      activeDotColor: KGreen,
                      dotColor: Colors.grey.shade200,
                      dotHeight: 10,
                      dotWidth: 10,)
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Texts
                  HeadingText(
                    text: 'Family Matching Maxi Tank Dress',
                    textWeight: FontWeight.w600,
                    size: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        HeadingText(
                          text: '₦ 300.00',
                          textWeight: FontWeight.w600,
                          size: 21,
                          fontFamily: '',
                        ),
                        SizedBox(width: w * 0.03),
                        Text('₦ 700.00',style: TextStyle(fontSize:17,fontFamily: '',decoration: TextDecoration.lineThrough,),),
                        SizedBox(width: w * 0.03),
                        Container(
                          height: 28,
                          width: 70,
                          decoration: BoxDecoration(
                              color: KRed,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(child: Text('42.8% Off',style: TextStyle(
                              color: KWhite,
                              fontWeight: FontWeight.w600,
                            fontSize:11,
                          ),)),

                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: HeadingText(
                      text: '2022 Family Matching Maxi Tank Dress Elegant Summer Mom And Me Mother Daughter Patchwork Floral Long Dresses For Women Baby Girl.',
                    textAlign: TextAlign.justify,
                    ),
                  ),

                  ///Ratings
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 17.5,
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
                        SizedBox(width: w * 0.02),
                        Text('4.9',style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 11,
                            fontWeight: FontWeight.w600),),
                        SizedBox(width: w * 0.012),
                        Text(' 556 orders',style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 11,
                            fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),

                  ///Image-Sizes
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: HeadingText(
                      text: 'Size',
                      textWeight: FontWeight.w600,
                      size: 16,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: h * 0.08,
                            width: w * 0.16,
                            decoration: BoxDecoration(
                              color: KPink,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage('assets/itemdetail.jpg'),
                                fit: BoxFit.fill,
                              )
                            ),

                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'S',
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: h * 0.08,
                            width: w * 0.16,
                            decoration: BoxDecoration(
                                color: KPink,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/itemdetail1.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),

                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'M',
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: h * 0.08,
                            width: w * 0.16,
                            decoration: BoxDecoration(
                                color: KPink,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/itemdetail.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),

                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'L',
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: h * 0.08,
                            width: w * 0.16,
                            decoration: BoxDecoration(
                                color: KPink,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/itemdetail1.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),

                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'XL',
                            size: 15,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: h * 0.08,
                            width: w * 0.16,
                            decoration: BoxDecoration(
                                color: KPink,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/itemdetail.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),

                          ),
                          SizedBox(height: 10),
                          HeadingText(
                            text: 'XXL',
                            size: 15,
                          ),
                        ],
                      ),

                    ],
                  ),

                  ///Delivery
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: HeadingText(
                      text: 'Delivery',
                      textWeight: FontWeight.w600,
                      size: 16,
                    ),
                  ),
                  Row(
                    children: [
                      HeadingText(
                        text: 'Shiping Charges:',
                        textWeight: FontWeight.w500,
                      ),
                      HeadingText(
                        text: ' ₦ 10.00',
                        textWeight: FontWeight.w500,
                        fontFamily: '',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        HeadingText(
                          text: 'Estimated Delivery:',
                        ),
                        HeadingText(
                          text: ' 15-20 days',
                          fontFamily: '',
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}



void showCustomDialog3(context) {
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
              height: 260 ,
              width: 280,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/deleteimage.svg',height: 100),
                  SizedBox(height: 12),
                  Text('Are you confirm to\n'
                      'delete this item?',
                    style: TextStyle(fontSize: 15  ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                          height: 50,
                          width: w * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: KGreen,width: 2),
                          ),
                          child: const Center(
                            child: Text('Cancel',style: TextStyle
                              (fontSize: 15),),
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.05),
                      MyElevatedButton2(
                        onPressed: (){
                          Get.back();
                        },
                        child: Text('Confirm'),
                        height: 50,
                        width: w * 0.3,
                        borderRadius: BorderRadius.circular(30),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
  );
}
