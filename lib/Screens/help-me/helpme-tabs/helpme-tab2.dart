import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Variables/globalVariables.dart';
import '../../../widgets/linear-percent-indicator.dart';
import '../../../widgets/my-text.dart';

class HelpMeTab2 extends StatefulWidget {
  const HelpMeTab2({Key? key}) : super(key: key);
  @override
  State<HelpMeTab2> createState() => _HelpMeTab2State();
}
class _HelpMeTab2State extends State<HelpMeTab2> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Column(
      children: [
        ///Tabbar
        Container(
          child: TabBar(
            isScrollable: true,
            controller: _tabcontroller,
            unselectedLabelColor: KDarkGrey,
            labelColor: KBlack,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: KGreen,
            indicatorPadding: EdgeInsets.symmetric(vertical: 5),
            tabs: [
              Tab(text: 'All',),
              Tab(text: 'Accepted'),
              Tab(text: 'Pending'),
              Tab(text: 'Rejected'),
            ],
          ),
        ),
        ///TabBar View
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: h * 0.6,
            child: TabBarView(
              controller: _tabcontroller,
              children: [
                ///tab-1
                AllHelpMe(),
                Center(child: Text('Data1')),
                Center(child: Text('Data2')),
                Center(child: Text('Data3')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AllHelpMe extends StatefulWidget {
  const AllHelpMe({Key? key}) : super(key: key);
  @override
  State<AllHelpMe> createState() => _AllHelpMeState();
}
class _AllHelpMeState extends State<AllHelpMe> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.only(left: 5,right: 5,bottom: 10),
              width: w,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Image
                  Container(
                    height: h * 0.215,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/11.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  ///Text Data
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        HeadingText(
                          text: 'San Diego, CA',
                          textColor: KLightGray,
                          textWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadingText(
                              text: 'Help Poor children ',
                              textWeight: FontWeight.w600,
                              size: 17,
                            ),
                            Container(
                              height: 23,
                              width: w * 0.27,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/checkicon.svg'),
                                  SizedBox(width: 6),
                                  HeadingText(
                                    text: 'Accepted',
                                    textWeight: FontWeight.w600,
                                    size: 12,
                                    textColor: KGreen,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        ///raised of
                        HeadingText(
                          text: '₦ 100,000 raised of ₦ 200,000',
                          textColor: KGreen,
                          textWeight: FontWeight.w500,
                          size: 16,
                          fontFamily: '',
                        ),

                        ///last donation + Percent Indicator
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Last Donation 2h ago',
                          textColor: KLightGray,
                          textWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10),
                        MyLinearPercent(),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.only(left: 5,right: 5,bottom: 10),
              width: w,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Image
                  Container(
                    height: h * 0.215,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/22.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  ///Text Data
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        HeadingText(
                          text: 'San Diego, CA',
                          textColor: KLightGray,
                          textWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadingText(
                              text: 'Donation for Eduction',
                              textWeight: FontWeight.w600,
                              size: 17,
                            ),
                            Container(
                              height: 23,
                              width: w * 0.27,
                              decoration: BoxDecoration(
                                color: Colors.red.shade100,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/cancel.svg',height: 9,color: Colors.red,),
                                  SizedBox(width: 6),
                                  HeadingText(
                                    text: 'Rejected',
                                    textWeight: FontWeight.w600,
                                    size: 12,
                                    textColor: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        ///raised of
                        HeadingText(
                          text: '₦ 100,000 raised of ₦ 200,000',
                          textColor: KGreen,
                          textWeight: FontWeight.w500,
                          size: 16,
                          fontFamily: '',
                        ),

                        ///last donation + Percent Indicator
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Last Donation 2h ago',
                          textColor: KLightGray,
                          textWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10),
                        MyLinearPercent(),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.only(left: 5,right: 5,bottom: 10),
              width: w,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ///Image
                  Container(
                    height: h * 0.215,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/33.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  ///Text Data
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        HeadingText(
                          text: 'San Diego, CA',
                          textColor: KLightGray,
                          textWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Donation for Education',
                          textWeight: FontWeight.w600,
                          size: 17,
                        ),
                        SizedBox(height: 5),
                        ///raised of
                        HeadingText(
                          text: '₦ 100,000 raised of ₦ 200,000',
                          textColor: KGreen,
                          textWeight: FontWeight.w500,
                          size: 16,
                          fontFamily: '',
                        ),

                        ///last donation + Percent Indicator
                        SizedBox(height: 5),
                        HeadingText(
                          text: 'Last Donation 2h ago',
                          textColor: KLightGray,
                          textWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 10),
                        MyLinearPercent(),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}




