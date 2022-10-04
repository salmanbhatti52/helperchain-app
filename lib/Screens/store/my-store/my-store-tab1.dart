import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-1.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-2.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';

import '../my-store-items/add-my-store.dart';
import '../my-store-items/view-my-store.dart';
import 'my-store-tab2.dart';


class MyStoreTab1 extends StatefulWidget {
  const MyStoreTab1({Key? key}) : super(key: key);
  @override
  State<MyStoreTab1> createState() => _MyStoreTab1State() ;
}

class _MyStoreTab1State extends State<MyStoreTab1> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    TabController _tabController = TabController(length: 7, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: KWhite,
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 320,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: w,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Image.asset('assets/myStore/background.png',height: h,width: w,fit: BoxFit.fill,),
                        ),
                        Column(
                          children: [
                            ///AppBar
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: AppBar(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                centerTitle: true,
                                leading: Icon(Icons.menu,color: Colors.transparent),
                                title: HeadingText(
                                  text: 'Store',
                                  textWeight: FontWeight.w600,
                                  textColor: KWhite,
                                ),
                                actions: [
                                  GestureDetector(
                                    onTap: (){
                                      Get.to(AddMyStore());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: SvgPicture.asset('assets/myStore/add.svg',height: 32,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 140,
                    child: Container(height: 145,width: 145,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/myStore/storelogo.png',fit: BoxFit.fill,),
                    ),
                  ),
                ],
              ),
            ),

            ///Title, Rating...
            HeadingText(
              text: 'Akode Fashion Store',
              textWeight: FontWeight.w600,
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: HeadingText(
                text: 'Mens, women and kids Fashion Store',
              textColor: KDarkGrey,),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  itemSize: 22,
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => Icon(Icons.star_rounded,
                    color: KYellow,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(width: w * 0.02),
                Text('4.0',style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),),
                SizedBox(width: w * 0.012),
                Text('(556)',style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),),
              ],
            ),

            ///Tabbar
            Container(
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                unselectedLabelColor: KDarkGrey,
                labelColor: KBlack,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: KGreen,
                indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Women'),
                  Tab(text: 'Men'),
                  Tab(text: 'Kids'),
                  Tab(text: 'Summer'),
                  Tab(text: 'Winter'),
                  Tab(text: 'Weather'),
                ],
              ),
            ),
            Container(
              height: h * 0.445,
              child: TabBarView(
                controller: _tabController,
                children: [
                  MyStoreTab(),
                 Center(child: Text('2')),
                 Center(child: Text('3')),
                 Center(child: Text('4')),
                 Center(child: Text('5')),
                 Center(child: Text('6')),
                 Center(child: Text('7')),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}


class MyStoreTab extends StatefulWidget {
  const MyStoreTab({Key? key}) : super(key: key);

  @override
  State<MyStoreTab> createState() => _MyStoreTabState();
}

class _MyStoreTabState extends State<MyStoreTab> {
  final PageController _IndController = PageController();
  List Images1 =[
    '/myStore/1.png', '/myStore/2.png', '/myStore/3.png', '/myStore/4.png',
    '/myStore/4.png', '/myStore/3.png', '/myStore/2.png', '/myStore/1.png'
  ];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GestureDetector(
          onTap: (){
            Get.to(ViewMyStore());
          },
          child: Container(
            height: 400,
            width: w,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 8,
              //scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 255,
                  crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 3,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Container(
                      width: w,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: h * 0.155,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),),
                              child: Image.asset('assets'+Images1.elementAt(index),fit: BoxFit.fill,),
                            ),
                          ),
                          SizedBox(height: h * 0.006),
                          HeadingText(
                              text: 'Herbion Baby care\nPack of 3 deals',size: 14),
                          SizedBox(height: h * 0.006),
                          HeadingText(text: 'Rs. 750.00',
                            textWeight: FontWeight.w600,),
                          SizedBox(height: h * 0.007),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
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
                              SizedBox(width: w * 0.03),
                              Container(
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
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

