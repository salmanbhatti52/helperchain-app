import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/Screens/dashboard/chat/group-screen.dart';
import 'package:helpers_chain/Screens/dashboard/dashboard.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
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
                  text: 'Chat',
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
                        child: GestureDetector(
                            onTap: (){
                              Get.to(Groups());
                            },
                            child: Text('My Groups')),
                      ),
                      PopupMenuItem(
                          child: Text('Archived')),
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
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10),
            child: Column(
              children: [
                ///TextField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    height: 50,
                    width: w,
                    decoration: BoxDecoration(
                      color: KOffwhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/search.svg'),
                        ),
                        hintText: 'Search',
                        border: InputBorder.none,
                        labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),

                ///Chats
                SizedBox(height: 15),


                ChatBuilder(),




                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat4.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Noah',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //     color: KPink,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('5 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:10, endIndent: 10,color: Colors.grey.shade500,),

                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat8.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Mili',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('26 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat3.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Oliver',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('26 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat7.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Ava',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('2 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat8.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Smith',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('30 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                //
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat4.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Noah',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 63,
                //       color: KPink,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('1 month ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat7.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Charlote',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('3 hours ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat5.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Oliver',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('5 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
                // ListTile(
                //   leading: CircleAvatar(
                //     radius: 28,
                //     child: Image.asset('assets/chat4.png'),
                //   ),
                //   title: HeadingText(
                //     text: 'Noah',
                //     textWeight: FontWeight.w600,
                //     size: 16,
                //   ),
                //   subtitle: Text('Lorem ipsum dolor sit amet conset sadipscing...',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: KBlack),),
                //   trailing: Container(
                //       width: 58,
                //       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('12 min ago',style: TextStyle(color: Colors.grey.shade400,fontSize: 10),),
                //         ],
                //       )),
                //
                // ),
                // Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),



              ],
            ),



          ),
        ),
      ),
    );
  }
}


class ChatBuilder extends StatefulWidget {
  const ChatBuilder({Key? key}) : super(key: key);

  @override
  State<ChatBuilder> createState() => _ChatBuilderState();
}
class _ChatBuilderState extends State<ChatBuilder> {

  List Images = [
    'chat3.png',
    'chat4.png',
    'chat5.png',
    'chat3.png',
    'chat7.png',
    'chat8.png',
    'chat4.png',
    'chat5.png',
  ];

  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.8,
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/'+ Images[index]),
                      ),
                      SizedBox(width: w * 0.03),
                      Column(
                        children: [
                          ///title text, time
                          Container(
                            width: w * 0.7,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HeadingText(
                                  text: 'Noah',
                                  textWeight: FontWeight.w600,
                                  size: 16,
                                ),HeadingText(
                                  text: '5 min ago',
                                  size: 11,
                                  textColor: Colors.grey.shade500,
                                )

                              ],
                            ),
                          ),
                          ///Text Message
                          SizedBox(height: 5),
                          Container(
                            width: w * 0.7,
                            child: HeadingText(
                              text: 'Lorem ipsum dolor sit amet conset sadipscing\nsdsaf....',
                              size: 11.5,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Divider(indent:12, endIndent: 12,color: Colors.grey.shade500,),
              ],
            );

          }
      ),
    );
  }
}
