import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                  text: 'Notifications',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index){
                    return Card(
                      elevation: 3,
                      shadowColor: KDarkGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Container(
                          height: h * 0.085,
                          width: w,
                          color: KWhite,
                          child: ListTile(
                            leading: SvgPicture.asset('assets/order.svg',height: 23,),
                            title: HeadingText(
                              text: 'Your order has arrived',
                              textWeight: FontWeight.w600,

                            ),
                            subtitle: Text('It is a long established fact that a\nreader will be distracted',
                              style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,),
                            ),
                          ),


                        ),
                      ),
                    );

                }),



        ),
      ),
    );
  }
}
