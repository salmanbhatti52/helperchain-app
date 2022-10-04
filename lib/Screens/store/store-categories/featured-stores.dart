import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-1.dart';
import 'package:helpers_chain/Screens/Store/store-tabs/store-tab-2.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:hive/hive.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class FeaturedStores extends StatefulWidget {
  const FeaturedStores({Key? key}) : super(key: key);

  @override
  State<FeaturedStores> createState() => _FeaturedStoresState() ;
}

class _FeaturedStoresState extends State<FeaturedStores> with TickerProviderStateMixin{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
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
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
          child: Column(
            children: [


              Container(
                height: 52,
                decoration: BoxDecoration(
                  color: KWhite,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: KGreen,
                      borderRadius: BorderRadius.circular(30)),
                  controller: _tabController,
                  unselectedLabelColor: KBlack,
                  labelColor: KBlack,
                  indicatorColor: KGreen,
                  indicatorPadding: EdgeInsets.all(5),
                  tabs: [
                    Tab(child:Text( 'My Store',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                    Tab(child:Text( 'Store',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: h * 0.765 ,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      StoreTab1(),
                      FeaturedStoresTab(),
                    ],
                  ),

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}


class FeaturedStoresTab extends StatefulWidget {
  const FeaturedStoresTab({Key? key}) : super(key: key);

  @override
  State<FeaturedStoresTab> createState() => _FeaturedStoresTabState();
}

class _FeaturedStoresTabState extends State<FeaturedStoresTab> {
  final ScrollController _Indcontroller = ScrollController();
  final PageController _IndController = PageController();
  List Images =[
    '/featuredStore/1.png',
    '/featuredStore/2.png',
    '/featuredStore/3.png',
    '/featuredStore/4.png',
    '/featuredStore/5.png',
    '/featuredStore/6.png',
    '/featuredStore/7.png',
    '/featuredStore/8.png',
  ];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
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
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/sliderimage.jpg'),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
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
              Row(children: [
                  HeadingText(
                    text: 'Featured Stores',
                    textWeight: FontWeight.w600,
                    size: 17,
                  ),
                ],),
              ///1st builder
              SizedBox(height: 10),
              Container(
                height: 400,
                width: w,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                itemCount: 8,
                //scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 230,
                    crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4),
                itemBuilder: (BuildContext context, int index) {

                  return Card(
                    elevation: 3,
                    shadowColor: KDarkGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Container(
                        width: w,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: h * 0.15,
                                width: w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('assets'+Images.elementAt(index)),
                              ),
                            ),
                            HeadingText(
                                text: 'Store Name xyz',size: 15,textWeight: FontWeight.w600,),
                            SizedBox(height: h * 0.006),
                            HeadingText(
                                text: 'Herbion Baby care\nPack of 3 deals',size: 13),
                            SizedBox(height: h * 0.007),
                            Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 17.5,
                                  initialRating: 1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: KYellow,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                SizedBox(width: w * 0.02),
                                Text('4.0',style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),),
                                SizedBox(width: w * 0.012),
                                Text('(556)',style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}



