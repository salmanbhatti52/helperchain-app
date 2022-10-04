import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-1.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-2.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';


class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState() ;
}

class _StoreState extends State<Store> with TickerProviderStateMixin{
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
                  text: 'Store',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        child: Stack(
                          children: [
                            SvgPicture.asset('assets/cart.svg'),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: KRed,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(child: Text('0',style: TextStyle(color: KWhite,fontSize: 8,fontWeight: FontWeight.w500),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: w *0.03),
                      SvgPicture.asset('assets/shop.svg'),
                      SizedBox(width: w *0.03),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
          child: Column(
            children: [


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
                    Tab(child:Text( 'My Store',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                    Tab(child:Text( 'Store',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: h * 0.765 ,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        StoreTab1(),
                        StoreTab2(),
                      ],
                    ),

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}


