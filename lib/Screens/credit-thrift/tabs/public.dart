import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/widgets/my-button.dart';

import '../../../Variables/globalVariables.dart';
import '../../../widgets/my-text.dart';

class Public extends StatefulWidget {
  const Public({Key? key}) : super(key: key);

  @override
  State<Public> createState() => _PublicState();
}

class _PublicState extends State<Public> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Column(
      children: [

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
            height: h * 0.54,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                ///tab-1
                PublicTab1(),
                Center(child: Text('2')),
                Center(child: Text('3')),
                Center(child: Text('4')),


              ],
            ),
          ),
        ),

      ],
    );
  }
}

///Public-Tab Data
class PublicTab1 extends StatelessWidget {
  const PublicTab1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: ListView.builder(
         itemCount: 4,
        itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 3,
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
           child: Padding(
             padding: const EdgeInsets.only(right: 5,left: 5,top: 10,bottom: 10),
            child: Container(
              height: h * 0.15,
              width: w,


            child: Column(
            children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
               text: TextSpan(
                  text: 'Xyz Thrift Cluster:',
                   style: TextStyle(color: KBlack,
                  fontWeight: FontWeight.w600,fontSize: 17),
                 children: <TextSpan>[
                  TextSpan(
                    text: ' #5000 Thrift',
                    style: TextStyle(color: KGreen,
                        fontWeight: FontWeight.w600,fontSize: 18)),

                  ],
                ),
             ),
               Container(
              height: 25,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
                  child: Center(
                  child: HeadingText(
                  text: 'Open',
                  size: 13,
                  textColor: KGreen,
                ),
            ),
          )
        ],
      ),
             ///Member-Images
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
          children: [
            Container(
              width: w * 0.3,
              child: Stack(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: KWhite)
                    ),
                    child: Image.asset('assets/chat3.png'),
                  ),
                  Positioned(
                    left: 25,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: KWhite)
                      ),
                      child: Image.asset('assets/chat4.png'),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: KWhite)
                      ),
                      child: Image.asset('assets/chat5.png'),
                    ),
                  ),
                  Positioned(
                    left: 75,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: KWhite)
                      ),
                      child: Image.asset('assets/chat7.png'),
                    ),
                  ),
                ],
              ),
            ),
            ///More Members
            SizedBox(width: w * 0.016),
            HeadingText(
              text: '10+ more members',
              textWeight: FontWeight.w600,
              size: 15,
            ),

          ],
        ),
               ),
              ///Invite Thrift Members
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                MyElevatedButton2(
                  onPressed: (){},
                  height: 30,
                  borderRadius: BorderRadius.circular(30),
                  child: HeadingText(
                      text: 'Invite Thrift Members',
                      textColor: KWhite,
                      size: 10),
                ),
                 RichText(
                  text: TextSpan(
                    text: 'Frequency:',
                    style: TextStyle(color: Colors.grey.shade500,
                          fontSize: 14),
                 children: <TextSpan>[
                  TextSpan(
                      text: 'Weekly',
                      style: TextStyle(color: KGreen,
                          fontSize: 14)),

                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/tag.svg',height: 15),
                    HeadingText(
                      text: 'Public',
                      textColor: KWhite,
                      size: 11,
                )
            ],
          )
        ],
      ),
            ],
          ),


        ),
      ),
    );
    }
    ),
    );
  }
}

