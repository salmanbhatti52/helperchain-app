import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import '../../Variables/globalVariables.dart';
import 'chat/chat-screen.dart';
import 'notifications-screen.dart';
import 'setting-screen.dart';
import 'dashboard-tabs.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    TabController _tabcontroller = TabController(length: 2, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: KWhite,
          key: scaffoldKey,
          drawer: MyDrawer(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 40),
              child: Column(
                children: [

                  ///Top Icons
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(40),
                          onTap: (){
                            scaffoldKey.currentState?.openDrawer();
                          },

                          child: SvgPicture.asset('assets/drawer.svg')
                      ),

                      InkWell(
                        splashColor: Colors.grey,
                        borderRadius: BorderRadius.circular(40),
                        onTap: (){
                          Get.to(Chat());
                        },
                        child: Container(child:
                            Stack(children: [
                                SvgPicture.asset('assets/chat.svg'),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: KRed,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            )

                        ),
                      ),
                      InkWell(
                        splashColor: Colors.grey,
                        borderRadius: BorderRadius.circular(40),
                        onTap: (){
                          Get.to(Notifications());
                        },
                        child: Container(child:
                            Stack(children: [
                              SvgPicture.asset('assets/notifications.svg'),
                              Positioned(
                                right: 2,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: KRed,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(child: Text('4',style: TextStyle(color: KWhite,fontSize: 8,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                            ],
                            ),

                        ),
                      ),
                      InkWell(
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(40),
                          onTap: (){
                            Get.to(Setting());
                          },
                          child: SvgPicture.asset('assets/settings.svg')),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25,),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HeadingText(
                          text: 'Dashboard',
                          size: 19,
                          textWeight: FontWeight.w700,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/platinum.png',),
                            SizedBox(width: w * 0.02,),
                            HeadingText(
                              text: 'Platinum',
                              textColor: KBlue,
                              size: 18,
                              textWeight: FontWeight.w700,
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  ///Card
                  SizedBox(height: h * 0.02),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: h * 0.28,
                    width: w,
                    decoration: BoxDecoration(
                      color: KGreen,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingText(
                              text: 'Account Name:',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                            HeadingText(
                              text: 'Bank Name:',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                            HeadingText(
                              text: 'Account Number:',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                            HeadingText(
                              text: 'Account Status:',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                            HeadingText(
                              text: 'Sponsor:',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                            HeadingText(
                              text: 'Affiliates are',
                              textWeight: FontWeight.w500,
                              size: 13,
                            ),
                          ],
                        ),

                        SizedBox(width: w * 0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingText(
                              text: 'Ross Geller',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                            SizedBox(height: h * 0.015),
                            HeadingText(
                              text: 'XYZ',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                            SizedBox(height: h * 0.017),
                            HeadingText(
                              text: '1234 4567 8901 4321',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                            SizedBox(height: h * 0.016),
                            Container(
                              height: 23,
                              width: 75,
                              decoration: BoxDecoration(
                                color: KWhite,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: HeadingText(
                                  text: 'Active',
                                  textWeight: FontWeight.w600,
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.011),
                            Container(
                              height: 22,
                              width: 75,
                              decoration: BoxDecoration(
                                color: KWhite,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: HeadingText(
                                  text: 'No',
                                  textWeight: FontWeight.w600,
                                  size: 15,
                                  textColor: KRed,
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.009),
                            RichText(
                              text: TextSpan(
                                text: '300',
                                style: TextStyle(color: KBlack,fontWeight: FontWeight.w600,fontSize: 20),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '/500', style: TextStyle(color: KWhite,fontWeight: FontWeight.w600,fontSize: 20)),

                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  ///Total Balance
                  SizedBox(height: h * 0.014),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    height: h * 0.125,
                    width: w,
                    decoration: BoxDecoration(
                      color: KGreen,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        HeadingText(
                          text: 'Total Balance',
                          textWeight: FontWeight.w600,
                          textColor: KWhite,
                          size: 14.5,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/nigeria.svg',height: 25,color: KWhite,),
                              const SizedBox(width: 8,),
                              HeadingText(
                                text: '100,000,000 ',
                                textWeight: FontWeight.bold,
                                textColor: KWhite,
                                size: 30,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  ///Loan Credit
                  SizedBox(height: h * 0.014),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    height: h * 0.125,
                    width: w,
                    decoration: BoxDecoration(
                      color: KBlue,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            HeadingText(
                              text: 'Available Loan Credit',
                              textWeight: FontWeight.w600,
                              textColor: KWhite,
                              size: 14.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/nigeria.svg',height: 21,color: KWhite,),
                                  const SizedBox(width: 8,),
                                  HeadingText(
                                    text: '100,000,000 ',
                                    textWeight: FontWeight.bold,
                                    textColor: KWhite,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        VerticalDivider(color: KBlack,thickness: 1.5,indent: 8,endIndent: 8,),
                        Column(
                          children: [
                            SvgPicture.asset('assets/recheck.svg',height: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text('Recheck'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/nigeria.svg',height: 10,color: KWhite,),
                                const SizedBox(width: 6,),
                                HeadingText(
                                  text: '50.00 ',
                                  textWeight: FontWeight.w600,
                                  textColor: KWhite,
                                  size: 12,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),

                  ///Charts
                  SizedBox(height: h * 0.018),
                  Row(
                    children: [
                      Expanded(
                          child:SvgPicture.asset('assets/chart1.svg')),
                      Expanded(
                          child:SvgPicture.asset('assets/chart2.svg')),
                    ],
                  ),

                  ///Custom Tabbar
                  Container(
                    child: TabBar(
                      controller: _tabcontroller,
                      unselectedLabelColor: KDarkGrey,
                      labelColor: KBlack,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: KGreen,
                      indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                      tabs: [
                        Tab(text: 'Recent Transactions',),
                        Tab(text: 'Applied Offers',),
                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: h * 0.5,
                      child: TabBarView(
                        controller: _tabcontroller,
                        children: [
                          ///tab-1
                          DashTab1(),
                          ///tab-2
                          DashTab2(),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),

        ));
  }
}
