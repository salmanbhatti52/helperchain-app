import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/dashboard/chat/chat-screen.dart';
import 'package:helpers_chain/Screens/dashboard/dashboard.dart';
import 'package:helpers_chain/Screens/profile/profile-detail.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import '../../Screens/Store/store-screen.dart';
import '../../Screens/affiliates/my-affiliate.dart';
import '../../Screens/banking/banking-1.dart';
import '../../Screens/credit-thrift/credit-thrift.dart';
import '../../Screens/help-me/help-me.dart';
import '../../Screens/messages/inbox.dart';
import '../../Screens/noticeboard/noticeboard.dart';
import '../../Screens/offers/offers.dart';
import '../../Screens/quick loan/quick loan.dart';
import '../my-text.dart';
import 'drawer-items.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}
class _MyDrawerState extends State<MyDrawer> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child:  ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40)),
        child: Drawer(
            child: Scaffold(
              backgroundColor: KGreen,
              body: SingleChildScrollView(
                child: Column(
                  children: [

                    ///white Cont
                    Container(
                      height: 200,
                      width: w,
                      color: KWhite,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 35,top: 30),
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              GestureDetector(
                                  onTap:(){
                                  Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset('assets/cancel.svg')),
                            ],),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/bvnimage.png'),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: HeadingText(
                              text: 'Ross Geller',
                              size: 16,
                              textWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/emailicon.svg',height: 18,),
                                SizedBox(width: 8,),
                                Text('andy243email.com',
                                style: TextStyle(color: Colors.grey.shade500,
                                fontSize: 13),)
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15,right: 60),
                      child: Column(
                        children: [
                          DrawerItems(
                            onTap: (){
                              Get.to(Dashboard());
                              setState((){
                                selectedIndex = 1;
                              });
                            },
                            color: selectedIndex==1 ? KWhite:Colors.transparent,
                            text: 'Dashboard',
                            image: 'assets/drawerIcons/dashboard.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(ProfileDetail());
                              setState((){
                                selectedIndex = 2;
                              });
                            },
                            color: selectedIndex==2 ? KWhite:Colors.transparent,
                            text: 'Profile',
                            image: 'assets/drawerIcons/profile.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              setState((){
                                Get.to(Banking1());
                                selectedIndex = 3;
                              });
                            },
                            color: selectedIndex==3 ? KWhite:Colors.transparent,
                            text: 'Banking',
                            image: 'assets/drawerIcons/bank.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              setState((){
                                Get.to(Store());
                                selectedIndex = 4;
                              });
                            },
                            color: selectedIndex==4 ? KWhite:Colors.transparent,
                            text: 'Store',
                            image: 'assets/drawerIcons/store.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(QuickLoan());
                              setState((){
                                selectedIndex = 5;
                              });
                            },
                            color: selectedIndex==5 ? KWhite:Colors.transparent,
                            text: 'Quick Loan',
                            image: 'assets/drawerIcons/loan.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(CreditThrift());
                              setState((){
                                selectedIndex = 6;
                              });
                            },
                            color: selectedIndex==6 ? KWhite:Colors.transparent,
                            text: 'Credit Thrift',
                            image: 'assets/drawerIcons/credit.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(Offers());
                              setState((){
                                selectedIndex = 7;
                              });
                            },
                            color: selectedIndex==7 ? KWhite:Colors.transparent,
                            text: 'Offers',
                            image: 'assets/drawerIcons/offers.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(HelpMe());
                              setState((){
                                selectedIndex = 8;
                              });
                            },
                            color: selectedIndex==8 ? KWhite:Colors.transparent,
                            text: 'HelpMe!',
                            image: 'assets/drawerIcons/helpme.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(Noticeboard());
                              setState((){
                                selectedIndex = 9;
                              });
                            },
                            color: selectedIndex==9 ? KWhite:Colors.transparent,
                            text: 'Noticeboard',
                            image: 'assets/drawerIcons/pin.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(MyAffiliates());
                              setState((){
                                selectedIndex = 10;
                              });
                            },
                            color: selectedIndex==10 ? KWhite:Colors.transparent,
                            text: 'Affiliates',
                            image: 'assets/drawerIcons/affiliates.svg',
                            iconPadding: 18,
                            textPadding: 14,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(Inbox());
                              setState((){
                                selectedIndex = 11;
                              });
                            },
                            color: selectedIndex==11 ? KWhite:Colors.transparent,
                            text: 'Messages',
                            image: 'assets/drawerIcons/msg.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              Get.to(Chat());
                              setState((){
                                selectedIndex = 12;
                              });
                            },
                            color: selectedIndex==12 ? KWhite:Colors.transparent,
                            text: 'Chat',
                            image: 'assets/drawerIcons/chat.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                          DrawerItems(
                            onTap: (){
                              setState((){
                                selectedIndex = 13;
                              });
                            },
                            color: selectedIndex==13 ? KWhite:Colors.transparent,
                            text: 'Raffle Tickets',
                            image: 'assets/drawerIcons/tickets.svg',
                            iconPadding: 10,
                            textPadding: 14,
                          ),
                          DrawerItems(
                            onTap: (){
                              setState((){
                                selectedIndex = 14;
                              });
                            },
                            color: selectedIndex==14 ? KWhite:Colors.transparent,
                            text: 'Airtime & Data',
                            image: 'assets/drawerIcons/data.svg',
                            iconPadding: 18,
                            textPadding: 22,
                          ),
                          DrawerItems(
                            onTap: (){
                              setState((){
                                selectedIndex = 15;
                              });
                            },
                            color: selectedIndex==15 ? KWhite:Colors.transparent,
                            text: 'Contact Us',
                            image: 'assets/drawerIcons/contact.svg',
                            iconPadding: 18,
                            textPadding: 18,
                          ),
                        ],
                      ),
                    ),

                    ///Logout
                    SizedBox(height: 12),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                          },
                          child: Container(
                            height: h * 0.055,
                            width: w * 0.46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: SvgPicture.asset('assets/drawerIcons/logout.svg',height: 25),
                                ),
                                SizedBox(width: 18),
                                HeadingText(
                                  text: 'Log Out',
                                  size: 17,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),


                  ],
                ),
              ),
            ),
          ),
      ),

    );
  }
}
