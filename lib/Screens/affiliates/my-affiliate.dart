import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';


class MyAffiliates extends StatefulWidget {
  const MyAffiliates({Key? key}) : super(key: key);
  @override
  State<MyAffiliates> createState() => _MyAffiliatesState() ;
}

class _MyAffiliatesState extends State<MyAffiliates>{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    List Images =[
      'affiliate1.png',
      'affiliate2.png',
      'affiliate3.png',
      'affiliate4.png',
      'affiliate5.png',
      'affiliate6.png',
      'affiliate7.png',
      'affiliate8.png',
      'affiliate9.png',
      'affiliate10.png',
    ];
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
                  text: 'My Affiliates',
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
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset('assets/threedots.svg'),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0, 80)),
        body: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                        child: Image.asset('assets/'+Images[index]),
                      ),
                      title: HeadingText(
                        text: 'Ust Aldi Taher',
                        textWeight: FontWeight.w600,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: HeadingText(
                          text: '@Ustalditaher',
                          textColor: KBlue,
                          textWeight: FontWeight.w600,
                          size: 14,
                        ),
                      ),
                    ),

                    Divider(thickness: 2,indent: 15,endIndent: 15,)
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}


