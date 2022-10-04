import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-1.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-2.dart';
import 'package:helpers_chain/Screens/credit-thrift/tabs/public.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import 'credit-thrift-details.dart';


class AddCreditThrift extends StatefulWidget {
  const AddCreditThrift({Key? key}) : super(key: key);

  @override
  State<AddCreditThrift> createState() => _AddCreditThriftState() ;
}

class _AddCreditThriftState extends State<AddCreditThrift> {
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
                  text: 'Create Credit Thrift Cluster',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///upload image
                Center(
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [KGreen, KBlue])
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: SvgPicture.asset('assets/camera.svg'),
                    ),
                    ),
                ),

                const SizedBox(height: 15,),
                const Text('Thrift a Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset('assets/nigeria1.svg',),
                      ),
                      hintText: "XYZandyjoe",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),
                const Text('Thrift Savings Account',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/nigeria2.svg',),
                      ),
                      hintText: "#5000",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),
                const Text('Frequency',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/weekly.svg',),
                      ),
                      hintText: "Weekly",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),
                const Text('Member Limit',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/peoples.svg',),
                      ),
                      hintText: "300",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),
                const Text('Add Admin',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/personicon.svg',),
                      ),
                      hintText: "Enter username",
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: MyElevatedButton(onPressed: (){
                    Get.to(CreditThriftDetails());
                  },
                      width: w,
                      borderRadius: BorderRadius.circular(30),
                      child: HeadingText(
                        text: 'CONTINUING',
                        textColor: KWhite,
                      )),
                )






              ],
            ),
          ),
        ),
      ),
    );
  }
}


