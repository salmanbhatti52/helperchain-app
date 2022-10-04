import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../Models/store/featured-stores-model.dart';
import '../../../Variables/globalVariables.dart';
import '../../../widgets/drawer/drawer.dart';
import '../store-categories/best-fashion-stores.dart';
import '../store-categories/featured-stores.dart';
import '../store-categories/new-arrival-stores.dart';

class MyStoreTab2 extends StatefulWidget {
  const MyStoreTab2({Key? key}) : super(key: key);

  @override
  State<MyStoreTab2> createState() => _MyStoreTab2State();
}

class _MyStoreTab2State extends State<MyStoreTab2> {
  final ScrollController _Indcontroller = ScrollController();
  final PageController _IndController = PageController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> Images= [
    'assets/bestfashion2.png',
    'assets/bestfashion3.png',
    'assets/bestfashion4.png',
    'assets/bestfashion5.png',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: AppBar(
              elevation: 0,
              backgroundColor: KWhite,
              centerTitle: true,
            leading: Icon(Icons.menu,color: Colors.transparent),
            title: HeadingText(
                text: 'Store',
                textWeight: FontWeight.w600,
                textColor: KBlack,
              ),
              actions: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      child: Stack(
                        children: [
                          SvgPicture.asset('assets/cart.svg'),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: KRed,
                                shape: BoxShape.circle,
                              ),
                              child: Center(child: Text('0',style: TextStyle(color: KWhite,fontSize: 8,fontWeight: FontWeight.w500),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: w *0.03),
                    SvgPicture.asset('assets/shop.svg'),
                    SizedBox(width: w *0.03),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SvgPicture.asset('assets/filter.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          preferredSize: Size(0, 80)),
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 90,left: 20,right: 20),
          child: Column(
            children: [

              ///Slider + Indicator
              CarouselSlider(
                // carouselController: _Indcontroller,
                options: CarouselOptions(
                    aspectRatio: 2.6,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 1
                ),
                items: [
                  Container(
                    decoration: BoxDecoration(
                      color: KPurple,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: KPurple,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: KPurple,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: KPurple,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SmoothPageIndicator(
                    controller: _IndController,
                    count: 5,
                    effect: WormEffect(
                      activeDotColor: KGreen,
                      dotColor: Colors.grey.shade200,
                      dotHeight: 10,
                      dotWidth: 10,)
                ),
              ),

              ///Feature Stores
              SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    text: 'Featured Stores',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(FeaturedStores());
                    },
                    child: HeadingText(
                      text: 'View all',
                      textColor: KBlue,
                      size: 15,
                    ),
                  ),
                ],),
              ///1st builder
              SizedBox(height: 10),
              Container(
                height: 245,
                width: w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Card(
                        elevation: 3,
                        shadowColor: KDarkGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Container(
                            width: w * 0.33,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: h * 0.148,
                                  width: w * 0.33,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset('assets/featuredimage.png',),
                                ),
                                SizedBox(height: h * 0.008),
                                HeadingText(
                                    text: 'Herbion Baby care\nPack of 3 deals',size: 13),
                                SizedBox(height: h * 0.009),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(text: 'Rs. 750.00',
                                          textWeight: FontWeight.w600,),
                                        SizedBox(height: h * 0.007),
                                        Text('Rs. 830.00',style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: KRed,
                                            decoration: TextDecoration.lineThrough),),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 8),
                                      height: h * 0.064,
                                      width: w * 0.064,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient:  LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [KGreen, KBlue])
                                      ),
                                      child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                        height: 16,)),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),

              ///Best Fashion Stores
              SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    text: 'Best Fashion Stores',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(BestFahionStores());
                    },
                    child: HeadingText(
                      text: 'View all',
                      textColor: KBlue,
                      size: 15,
                    ),
                  ),
                ],),
              ///2nd builder
              SizedBox(height: 10),
              Container(
                height: h * 0.128,
                width: w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Row(
                        children: [
                          Padding (
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              height: h * 0.25,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: KWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: HeadingText(
                                  text: 'carter\'s',
                                  textWeight: FontWeight.w600,
                                  textColor: KBlue,
                                  size: 20,
                                ),
                              ),

                            ),
                          ),
                          Padding (
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              height: h * 0.25,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: KWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('assets/bestfashion2.png'),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              height: h * 0.25,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: KWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('assets/bestfashion3.png'),


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              height: h * 0.25,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: KWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('assets/bestfashion4.png'),


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Container(
                              height: h * 0.25,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: KWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('assets/bestfashion5.png'),


                            ),
                          ),
                        ],
                      );
                    }
                ),
              ),

              ///New Arrival Stores
              SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    text: 'New Arrival Stores',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(NewArrivalStores());
                    },
                    child: HeadingText(
                      text: 'View all',
                      textColor: KBlue,
                      size: 15,
                    ),
                  ),
                ],),
              ///3rd builder
              SizedBox(height: 10),
              Container(
                height: 245,
                width: w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Row(
                        children: [
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/newarrival1.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                      text: 'Aginer',
                                      textWeight: FontWeight.w600, size: 15,),
                                    HeadingText(
                                      text: 'Pink Logo Babygrow',
                                      size: 13,),
                                    SizedBox(height: h * 0.008),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.061,
                                          width: w * 0.061,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/newarrival2.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                      text: 'Name it baby',
                                      textWeight: FontWeight.w600, size: 15,),
                                    HeadingText(
                                      text: 'Shirt Romper',
                                      size: 13,),
                                    SizedBox(height: h * 0.008),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.061,
                                          width: w * 0.061,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/newarrival1.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                      text: 'Aginer',
                                      textWeight: FontWeight.w600,size: 15,),
                                    HeadingText(
                                      text: 'Pink Logo Babygrow',
                                      size: 13,),
                                    SizedBox(height: h * 0.008),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.061,
                                          width: w * 0.061,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),


                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),

              ///Toy Stores
              SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    text: 'Toy Stores',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                  HeadingText(
                    text: 'View all',
                    textColor: KBlue,
                    size: 15,
                  ),
                ],),
              ///4th builder
              SizedBox(height: 10),
              Container(
                height: 245,
                width: w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Row(
                        children: [
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/toy1.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                        text: 'Stuffed Pink Panther 32',size: 13),
                                    SizedBox(height: h * 0.009),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.064,
                                          width: w * 0.064,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),


                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/toy2.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                        text: 'Hevrolet Camaro SS Sports Model Car',size: 13),
                                    SizedBox(height: h * 0.009),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.064,
                                          width: w * 0.064,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: KDarkGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Container(
                                width: w * 0.33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: h * 0.148,
                                      width: w * 0.33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset('assets/toy2.png',),
                                    ),
                                    SizedBox(height: h * 0.008),
                                    HeadingText(
                                      text: 'Hevrolet Camaro SS Sports Model Car',size: 13,),
                                    SizedBox(height: h * 0.009),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            HeadingText(text: 'Rs. 750.00',
                                              textWeight: FontWeight.w600,),
                                            SizedBox(height: h * 0.007),
                                            Text('Rs. 830.00',style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                                color: KRed,
                                                decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          height: h * 0.064,
                                          width: w * 0.064,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient:  LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [KGreen, KBlue])
                                          ),
                                          child: Center(child: SvgPicture.asset('assets/cart.svg',color: KWhite,
                                            height: 16,)),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),



            ],
          ),
        ),
      ),
    );
  }
}