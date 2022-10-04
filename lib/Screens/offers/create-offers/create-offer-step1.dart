import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../../widgets/my-button.dart';
import '../../../widgets/my-textfield.dart';
import '../../Store/my-store-items/add-my-store.dart';
import 'create-offer-step2.dart';

class CreateOfferStep1 extends StatefulWidget {
  const CreateOfferStep1({Key? key}) : super(key: key);
  @override
  State<CreateOfferStep1> createState() => _CreateOfferStep1State();
}

class _CreateOfferStep1State extends State<CreateOfferStep1> {
  List<String> CategoryItem =['Choose category here','Select Partner Type','Category 1','Category 2','Category 3', 'Category 4',];
  String? selectItem ='Choose category here';
  String? selectItem1 ='Select Partner Type';
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
                    },
                    icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'Create Offer',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(child: SvgPicture.asset('assets/step1.svg',width: w,)),

                SizedBox(height: 20),
                const Text('Offer Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Type Offer Name',
                  bgColor: KOffwhite,
                  maxLines: 1,
                ),

                SizedBox(height: 20),
                const Text('Choose Category',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset('assets/categoryicon.svg',height: 20,),
                      ),
                    ),
                    value: selectItem,
                    icon: Icon(Icons.keyboard_arrow_down_rounded,color: KGreen,size: 28),
                    // underline: SizedBox.shrink(),
                    items: CategoryItem.map((String CategoryItem) {
                      return DropdownMenuItem(
                        value: CategoryItem,
                        child: Text(CategoryItem),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem = newValue!;
                      });
                    },
                  ),
                ),

                SizedBox(height: 20),
                const Text('Partner Type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                      prefixIcon: IconButton(
                          onPressed: (){},
                        icon: SvgPicture.asset('assets/personicon.svg',height: 20,),
                      ),
                    ),
                    value: selectItem1,
                    icon: Icon(Icons.keyboard_arrow_down_rounded,color: KGreen,size: 28),
                    // underline: SizedBox.shrink(),
                    items: CategoryItem.map((String CategoryItem) {
                      return DropdownMenuItem(
                        value: CategoryItem,
                        child: Text(CategoryItem),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectItem1 = newValue!;
                      });
                    },
                  ),
                ),


                SizedBox(height: 20),
                const Text('Partner Full Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                MyIconTextField(
                  height: 59,
                  width: w,
                  radius: BorderRadius.circular(30),
                  hintText: 'Partner Full Name',
                  bgColor: KOffwhite,
                  prefixicon: IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset('assets/personicon.svg',height: 20,),
                  ),
                  maxLines: 1,

                ),

                SizedBox(height: 20),
                const Text('Partner Brand Logo',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: h * 0.2,
                    width: w * 0.45,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(45),
                      child: SvgPicture.asset('assets/imagelogo.svg',color: Colors.black87,),
                    ),
                  ),
                ),

                ///Next Button
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: MyElevatedButton(
                    onPressed: (){
                      Get.to(CreateOfferStep2());
                    },
                    width: w,
                    borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'NEXT',
                      textColor: KWhite,
                      textWeight: FontWeight.w600,
                      size: 17,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
