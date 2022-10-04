import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'my-store-tab1.dart';
import 'my-store-tab2.dart';


class MyStore extends StatefulWidget {
  const MyStore({Key? key}) : super(key: key);
  @override
  State<MyStore> createState() => _MyStoreState() ;
}

class _MyStoreState extends State<MyStore> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController? _tabController = TabController(length: 2, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: KWhite,
      drawer: MyDrawer(),
      body: Stack(
        children: [

          Container(
            height: h * 1 ,
            child: TabBarView(
              controller: _tabController,
              children: [
                MyStoreTab1(),
                MyStoreTab2(),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 110),
            child: Container(
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
                // onTap: (index) {
                //   setState(() {
                //     selectedIndex = index;
                //     _tabController!.index = selectedIndex;
                //   });
                // },

                indicator: BoxDecoration(color: KGreen,
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
          ),

          ///Drawer Button
          Positioned(
            top: 48,
            child: IconButton(
                onPressed: (){
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: SvgPicture.asset('assets/drawer.svg',height: 25,
                  color: selectedIndex == 0 ? KPink:KBlack,
                )
            ),
          ),


        ],
      ),
    );
  }
}


