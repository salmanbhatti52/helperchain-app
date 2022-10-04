import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'loans/loans.dart';


class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);
  @override
  State<Offers> createState() => _OffersState() ;
}
class _OffersState extends State<Offers> with TickerProviderStateMixin{
  int selectedIndex = 0;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
                  text: 'Offers',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/search2.svg'),
                      SizedBox(width: w *0.02),
                      SvgPicture.asset('assets/filter.svg'),
                      SizedBox(width: w *0.02),
                      PopupMenuButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                            child: GestureDetector(
                                onTap: (){
                                },
                                child: Text('List View')),
                          ),
                          PopupMenuItem(
                              child: Text('Grid View')),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SvgPicture.asset('assets/threedots.svg'),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [

              ///Tab-Bar
              SizedBox(height: 10),
              ButtonsTabBar(
                controller: _tabController,
                height: 50,
                contentPadding: EdgeInsets.symmetric(horizontal: 45),
                radius: 30,
                backgroundColor: KGreen,
                unselectedBackgroundColor: KLightGray,
                  tabs: [
                    Tab(child:Center(child: Text( 'Loan',style: TextStyle(color: KBlack,fontSize: 16,fontWeight: FontWeight.w400),))),
                    Tab(child:Text( 'Grants',style: TextStyle(color: KBlack,fontSize: 16,fontWeight: FontWeight.w400),)),
                    Tab(child:Text( 'Goods',style: TextStyle(color: KBlack,fontSize: 16,fontWeight: FontWeight.w400),)),
                  ],
                ),

              Padding(
                padding: const EdgeInsets.only(top: 15,right: 8),
                child: Container(
                  height: h * 0.775,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Loans(),
                      Center(child: Text('2')),
                      Center(child: Text('3')),
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


