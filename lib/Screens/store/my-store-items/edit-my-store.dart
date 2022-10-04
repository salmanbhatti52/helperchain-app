import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/my-button.dart';
import 'add-my-store.dart';


class EditMyStore extends StatefulWidget {
  const EditMyStore({Key? key}) : super(key: key);
  @override
  State<EditMyStore> createState() => _EditMyStoreState();
}

final PageController _IndController = PageController();


class _EditMyStoreState extends State<EditMyStore> {
  List<String> CatItems2 =['Select Category','Women Fashion','Men Fashion','Kids Fashion', 'Season Fashion',];
  String? selectedItem2 ='Select Category';
  List<String> deliveryitems2 =['15-20 days','20-30 days','30-40 days','40-60 days'];
  String? selectedDelivery2 ='15-20 days';
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
                  Image.asset('assets/itemdetail1.jpg',fit: BoxFit.cover,width: w,),
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
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 110,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                        SizedBox(width: w * 0.02),
                        HeadingText(
                          text: 'Delete Picture',
                          textWeight: FontWeight.bold,
                          textColor: KWhite,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Images+
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        height: h * 0.08,
                        width: w * 0.16,
                        decoration: BoxDecoration(
                          color: KOffwhite,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: SvgPicture.asset('assets/add.svg',color: Colors.black54,),
                        ),
                      ),


                    ],
                  ),


                  ///Title
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('Title',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    height: 59,
                    width: w,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Family Matching Maxi Tank Dress",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),


                  ///Price
                  Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text('Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            height: 59,
                            width: w * 0.6,
                            decoration: BoxDecoration(
                              color: KOffwhite,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.start,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "₦ 300.00",
                                hintStyle: TextStyle(fontFamily: ''),
                                border: InputBorder.none,
                                labelStyle:
                                TextStyle(color: Colors.black, fontSize: 20.0,fontFamily: ''),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: w * 0.015,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text('Discount',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            height: 59,
                            width: w * 0.28,
                            decoration: BoxDecoration(
                              color: KOffwhite,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.start,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "₦ 300.00",
                                hintStyle: TextStyle(fontFamily: ''),
                                border: InputBorder.none,
                                labelStyle:
                                const TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                  ///Product Details
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('Product Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    height: 100,
                    width: w,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "2022 Family Matching Maxi Tank Dress Elegant Summer Mom And Me Mother Daughter Patchwork Floral Long Dresses For Women Baby Girl.",
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),


                  ///Category
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('Category',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    height: 59,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(border: InputBorder.none,
                      ),
                      value: selectedItem2,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      // underline: SizedBox.shrink(),
                      items: CatItems2.map((String CatItems2) {
                        return DropdownMenuItem(
                          value: CatItems2,
                          child: Text(CatItems2),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedItem2 = newValue!;
                        });
                      },
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

                  ///Add Size
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('Add Size',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                        height: 59,
                        width: w * 0.62,
                        decoration: BoxDecoration(
                          color: KOffwhite,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Type size",
                            border: InputBorder.none,
                            labelStyle:
                            const TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.015,),
                      MyElevatedButton(
                        onPressed: () {  },
                        borderRadius: BorderRadius.circular(30),
                        width: w * 0.26,
                        child: HeadingText(text: 'Add',textWeight: FontWeight.w600,textColor: KWhite,size: 17,),
                      ),
                    ],
                  ),

                  ///Delivery
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('Delivery',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Shiping Charges',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                          const SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            height: 59,
                            width: w * 0.44,
                            decoration: BoxDecoration(
                              color: KOffwhite,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "₦ 10.00",
                                hintStyle: TextStyle(fontFamily: ''),
                                border: InputBorder.none,
                                labelStyle:
                                const TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Estimate Delivery',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                          const SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 15),
                            height: 59,
                            width: w * 0.44,
                            decoration: BoxDecoration(
                              color: KOffwhite,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(border: InputBorder.none,
                              ),
                              value: selectedDelivery2,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: deliveryitems2.map((String deliveryitems2) {
                                return DropdownMenuItem(
                                  value: deliveryitems2,
                                  child: Text(deliveryitems2),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedDelivery2 = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  ///Button
                  SizedBox(height: h * 0.05),
                  MyElevatedButton(
                      onPressed: (){},
                      width: w,
                      borderRadius: BorderRadius.circular(30),
                      child: HeadingText(
                        text: 'SAVE',
                        textColor: KWhite,
                        size: 17,
                        textWeight: FontWeight.w600,
                      )),


                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
