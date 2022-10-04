import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/banking/upgrade-account/upgrade-account-1.dart';
import 'package:helpers_chain/Screens/dashboard/chat/group-screen.dart';
import 'package:helpers_chain/Screens/dashboard/dashboard.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import '../../Login-register-bvn-screens/bvn-screens/data-after-bvn.dart';
import '../../widgets/my-button.dart';
import 'atm-debit-card.dart';
import 'banking-tabs.dart';

class Banking2 extends StatefulWidget {
  const Banking2({Key? key}) : super(key: key);

  @override
  State<Banking2> createState() => _Banking2State() ;
}

class _Banking2State extends State<Banking2> with TickerProviderStateMixin{
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
                  text: 'Banking',
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
            padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
            child: Column(
              children: [

                Center(
                  child: HeadingText(
                    text: 'Total Balance:',
                    textColor: KDarkGrey,
                  ),
                ),
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 5),
                        child: SvgPicture.asset('assets/nigeria.svg',color: KGreen,height: 20)
                    ),
                    SizedBox(width: w * 0.009),
                    HeadingText(
                      text: '200,000,000',
                      textColor: KBlack,
                      size: 38,
                      textWeight: FontWeight.w600,
                    ),

                  ],
                ),

                ///Request Atm
                SizedBox(height: 25),
                MyElevatedButton2(
                    onPressed: (){
                      Get.to(AtmDebitCard());
                    },
                    height: 50,
                    borderRadius: BorderRadius.circular(30),
                    child: const Text('REQUEST ATM CARD',
                      style: TextStyle(fontSize: 15.5)),
                ),


                ///Tabbar
                SizedBox(height: 15),
                Container(
                  child: TabBar(
                    isScrollable: true,
                    controller: _tabcontroller,
                    unselectedLabelColor: KDarkGrey,
                    labelColor: KBlack,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: KGreen,
                    indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                    tabs: [
                      Tab(text: 'Last Week',),
                      Tab(text: 'Last 15 Days'),
                      Tab(text: 'Last Month'),
                      Tab(text: 'Last Year'),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: h * 0.57,
                    child: TabBarView(
                      controller: _tabcontroller,
                      children: [
                        ///tab-1
                        BankTab1(),
                        Center(child: Text('2')),
                        Center(child: Text('3')),
                        Center(child: Text('4')),

                      ],
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
