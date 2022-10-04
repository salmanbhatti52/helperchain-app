import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';

import 'create-request/create-request-step1.dart';
import 'helpme-tabs/helpme-tab1.dart';
import 'helpme-tabs/helpme-tab2.dart';


class HelpMe extends StatefulWidget {
  const HelpMe({Key? key}) : super(key: key);
  @override
  State<HelpMe> createState() => _HelpMeState() ;
}

class _HelpMeState extends State<HelpMe> with TickerProviderStateMixin{
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
                  text: 'HelpMe!',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/search2.svg'),
                      SizedBox(width: w *0.02),
                      GestureDetector(
                        onTap: (){
                          Get.to(CreateRequestStep1());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SvgPicture.asset('assets/myStore/add.svg',height: 27,color: KBlack,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Column(
                children: [

                  ///TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      height: 50,
                      width: w,
                      decoration: BoxDecoration(
                        color: KOffwhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/search.svg'),
                          ),
                          hintText: 'Search',
                          border: InputBorder.none,
                          labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),

                  ///TabBar
                  Container(
                    height: 52,
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
                        Tab(child:Text( 'Other\'s requests',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                        Tab(child:Text( 'My requests',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                      ],
                    ),
                  ),
                  ///TabBar View
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: h * 0.685 ,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          HelpMeTab1(),
                          HelpMeTab2(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}


