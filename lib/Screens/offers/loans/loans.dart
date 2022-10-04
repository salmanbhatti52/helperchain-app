import 'package:flutter/material.dart';
import '../../../Variables/globalVariables.dart';
import '../loans-tab/all-tab.dart';
import '../loans-tab/closed-tab.dart';
import '../loans-tab/feature-tab.dart';
import '../loans-tab/my-tab.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);
  @override
  State<Loans> createState() => _LoansState();
}
class _LoansState extends State<Loans> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Column(
      children: [

        ///Tabbar
        SizedBox(height: 10),
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
              Tab(text: 'All',),
              Tab(text: 'Feature Offers'),
              Tab(text: 'Closed Offers'),
              Tab(text: 'My Offers'),
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: h * 0.685,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                ///tab-1
                AllTab(),
                FeatureTab(),
                ClosedTab(),
                MyTab(),


              ],
            ),
          ),
        ),

      ],
    );
  }
}



