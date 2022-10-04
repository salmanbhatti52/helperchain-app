import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../../../widgets/my-button.dart';

class AddMyStore extends StatefulWidget {
  const AddMyStore({Key? key}) : super(key: key);

  @override
  State<AddMyStore> createState() => _AddMyStoreState();
}
  List<String> CatItems =['Select Category','Category 1','Category 2','Category 3', 'Category 4',];
  String? selectedItem ='Select Category';
  List<String> deliveryitems =['15-20 days','20-30 days','30-40 days','40-60 days'];
  String? selectedDelivery ='15-20 days';

class _AddMyStoreState extends State<AddMyStore> {
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
                  text: 'Add Items',
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
                ///add image
                Center(
                  child: Container(
                    height: h * 0.16,
                    width: w * 0.32,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),

                  ),
                ),

                ///Product Title
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Product Title',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
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
                      hintText: "Type title here",
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
                        value: selectedItem,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        // underline: SizedBox.shrink(),
                        items: CatItems.map((String CatItems) {
                          return DropdownMenuItem(
                            value: CatItems,
                            child: Text(CatItems),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                       selectedItem = newValue!;
                });
              },
            ),
          ),

                ///Product Price
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Product Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "₦ 00.00",
                      hintStyle: TextStyle(fontFamily: ''),
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                ///Discount
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Discount',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "% 00.00",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                ///Product Details
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Product Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  height: h * 0.21,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    maxLines: 6,
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Type here",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
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
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
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
                              // prefixIcon: Icon(Icons.person),
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
                            value: selectedDelivery,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            // underline: SizedBox.shrink(),
                            items: deliveryitems.map((String deliveryitems) {
                              return DropdownMenuItem(
                                value: deliveryitems,
                                child: Text(deliveryitems),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedDelivery = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Upload Product Images',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    height: h * 0.15,
                    width: w * 0.29,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.29,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                  ),
                  Container(
                    height: h * 0.15,
                    width: w * 0.29,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: SvgPicture.asset('assets/add.svg',color: Colors.black54,),
                    ),
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
                      text: 'ADD ITEM',
                      textColor: KWhite,
                      size: 17,
                      textWeight: FontWeight.w600,
                    )),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
