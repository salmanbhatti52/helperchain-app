import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Variables/globalVariables.dart';
import 'my-text.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              //scaffoldKey.currentState?.openDrawer();
            }, icon: SvgPicture.asset('assets/drawer.svg',height: 25,color: KWhite,)),
        title: HeadingText(
          text: 'Noticeboard',
          textWeight: FontWeight.w600,
          textColor: KWhite,
        ),
        actions: [
          Row(
            children: [
              SvgPicture.asset('assets/search2.svg',color: KWhite),
              SizedBox(width: w *0.02),
              GestureDetector(
                  onTap: (){
                  },
                  child: SvgPicture.asset('assets/addwhite.svg',height: 28)),
              SizedBox(width: w *0.01),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SvgPicture.asset('assets/dots.svg',color: KWhite),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
