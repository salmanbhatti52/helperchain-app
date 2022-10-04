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

import 'add-credit-thrift.dart';


class CreditThrift extends StatefulWidget {
  const CreditThrift({Key? key}) : super(key: key);

  @override
  State<CreditThrift> createState() => _CreditThriftState() ;
}

class _CreditThriftState extends State<CreditThrift> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
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
                  text: 'Credit Thrift',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/search2.svg'),
                      SizedBox(width: w *0.02),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset('assets/filter.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [

                HeadingText(
                  text: 'Powered by Acorn Capital',
                  textColor: KGreen,
                  size: 17,
                  textWeight: FontWeight.w600,
                ),
                SizedBox(height: 15),

                ///Tab-Bar
                Container(
                  height: 52,
                  width: w * 0.75,
                  decoration: BoxDecoration(
                    color: KWhite,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: KGreen,
                        borderRadius: BorderRadius.circular(30)),
                    controller: _tabController,
                    unselectedLabelColor: KBlack,
                    labelColor: KBlack,
                    indicatorColor: KGreen,
                    indicatorPadding: EdgeInsets.all(5),
                    tabs: [
                      Tab(child:Text( 'Public',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                      Tab(child:Text( 'Private',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: h * 0.65 ,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Public(),
                        Center(child: Text('2')),
                      ],
                    ),

                  ),
                ),

                ///Add Thrift
                MyElevatedButton(
                    onPressed: (){
                      Get.to(AddCreditThrift());
                    },
                  width: w,
                  borderRadius: BorderRadius.circular(30),
                    child: HeadingText(
                      text: 'ADD THRIFT',
                      textColor: KWhite,
                      size: 17,
                    ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}


