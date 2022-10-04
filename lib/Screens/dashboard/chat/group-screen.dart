import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

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
                      Get.back();
                    }, icon: SvgPicture.asset('assets/backarrow.svg',height: 25,color: KBlack,)),
                title: HeadingText(
                  text: 'My Groups',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
                actions: [
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    itemBuilder: (context)=>[
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Text('All Groups'),
                            SizedBox(width: w * 0.007),
                            Icon(Icons.check,color: KGreen,size: 17,),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                          child: Text('Affiliates Groups'),
                      ),
                      PopupMenuItem(
                        child: Text('Sponsor Groups'),
                      ),
                      PopupMenuItem(
                        child: Text('Thrift Groups'),
                      ),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset('assets/threedots.svg'),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: Column(
              children: [
                ///TextField
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 59,
                  width: w,
                  decoration: BoxDecoration(
                    color: KOffwhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SvgPicture.asset('assets/search.svg',height: 22,),
                      ),
                      hintText: 'Search',
                      border: InputBorder.none,
                      labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),

                ///Chats
                SizedBox(height: 15),

                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    child: Image.asset('assets/group1.png'),
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                  trailing: Text('5 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    child: Image.asset('assets/group2.png'),
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                  trailing: Text('26 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/group3.png'),
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                  trailing: Text('26 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/group4.png'),
                      ),
                      Positioned(
                        bottom: 6,
                        right: 1,
                        child: Container(
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                            color: KGreen,
                            border: Border.all(color: KWhite),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                  trailing: Text('26 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/group5.png'),
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                  trailing: Text('1 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/group6.png'),
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                  trailing: Text('1 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/group7.png'),
                      ),
                      Positioned(
                        bottom: 6,
                        right: 1,
                        child: Container(
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                            color: KGreen,
                            border: Border.all(color: KWhite),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                  trailing: Text('1 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),
                Divider(color: Colors.grey.shade500,),
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/group8.png'),
                      ),
                      Positioned(
                        bottom: 6,
                        right: 1,
                        child: Container(
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                            color: KGreen,
                            border: Border.all(color: KWhite),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: HeadingText(
                    text: 'Group Name ABC',
                    textWeight: FontWeight.w600,
                    size: 16,
                  ),
                  subtitle: Text('Lorem ipsum dolor sit amet  consetetur sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                  trailing: Text('1 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 11),),

                ),




              ],
            ),



          ),
        ),
      ),
    );
  }
}
