import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import '../../widgets/drawer/drawer.dart';
import '../../widgets/my-text.dart';
import 'create-notice.dart';
import 'noticeboard tabs/featured-tab.dart';

class Noticeboard extends StatefulWidget {
  const Noticeboard({Key? key}) : super(key: key);
  @override
  State<Noticeboard> createState() => _NoticeboardState();
}

class _NoticeboardState extends State<Noticeboard> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Container(
        child: Stack(
          children: [
            ///bg Image
            Image.asset('assets/noticebg.png',height: h * 1,fit: BoxFit.fitHeight,),

            Column(
              children: [
                ///App-bar
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    centerTitle: true,
                    leading: IconButton(
                        onPressed: (){
                          scaffoldKey.currentState?.openDrawer();
                        }, icon: SvgPicture.asset('assets/drawer.svg',height: 25,color: KWhite,)),
                    title: HeadingText(
                      text: 'Noticeboard',
                      textWeight: FontWeight.w600,
                      textColor: KWhite,
                    ),
                    actions: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/search2.svg',color: KWhite),
                          SizedBox(width: w *0.02),
                          GestureDetector(
                              onTap: (){
                                Get.to(CreateNotice());
                              },
                              child: SvgPicture.asset('assets/addwhite.svg',height: 28)),
                          SizedBox(width: w *0.01),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: SvgPicture.asset('assets/dots.svg',color: KWhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ///Tab-Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Container(
                    height: 57,
                    width: w * w,
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
                      indicatorPadding: EdgeInsets.all(7),
                      tabs: [
                        Tab(child:Text( 'Featured',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
                        Tab(child:Text( 'Notices',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
                        Tab(child:Text( 'My Notices',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10,top: 10),
                  child: SizedBox(
                    height: h * 0.76 ,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        FeaturedTab(),
                        Center(child: HeadingText(text: '2',textColor: KWhite,size: 17,)),
                        Center(child: HeadingText(text: '3',textColor: KWhite,size: 17,)),
                      ],
                    ),

                  ),
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
