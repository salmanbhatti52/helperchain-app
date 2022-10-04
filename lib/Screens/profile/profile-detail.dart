import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helpers_chain/Variables/globalVariables.dart';
import 'package:helpers_chain/widgets/drawer/drawer.dart';
import 'package:helpers_chain/widgets/my-text.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
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
                  text: 'Profile',
                  textWeight: FontWeight.w600,
                  textColor: KBlack,
                ),
              ),
            ),
            preferredSize: Size(0, 80)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
            child: Column(
              children: [

                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/bvnimage.png'),
                        )
                    ),
                    child: Stack(
                      children: [

                        Positioned(
                            right: -12,
                            bottom: 18,
                            child: SvgPicture.asset('assets/uploadimage.svg')),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 13),
                ///Data
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Name',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                            SizedBox(height: 9),
                            Text('Ross Geller'),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Sex',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Male'),

                        ],
                      ),


                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Date of Birth',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('16/08/1985'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'BVN',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('22183168678'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Account no.',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('22183168678'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Bank Name',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Demo Bank'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: HeadingText(
                                  text: 'Phone no.',
                                  textWeight: FontWeight.w600,
                                  size: 15,
                                ),
                              ),
                              SizedBox(height: 9),
                              Text('+92 302 650 3481'),
                            ],
                          ),
                          SvgPicture.asset('assets/edit.svg'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: HeadingText(
                                  text: 'Email address',
                                  textWeight: FontWeight.w600,
                                  size: 15,
                                ),
                              ),
                              SizedBox(height: 9),
                              Text('Example@gmail.com'),
                            ],
                          ),
                          SvgPicture.asset('assets/edit.svg'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: HeadingText(
                                  text: 'Address',
                                  textWeight: FontWeight.w600,
                                  size: 15,
                                ),
                              ),
                              SizedBox(height: 9),
                              Text('2147-E Shalimar Colony, Pakistan'),
                            ],
                          ),
                          SvgPicture.asset('assets/edit.svg'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'State of Residence',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Punjab'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Geo Political Zone',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Lorium ipsum'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Sponsor',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Lorium ipsum'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Trust Level',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          RatingBar.builder(
                            itemSize: 21,
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
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Review Score',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('8/10'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Membership Level',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Gold'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Sponsor Affiliate',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Lorium ipsum'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  shadowColor: KDarkGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      height: h * 0.07,
                      width: w,
                      color: KWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: HeadingText(
                              text: 'Status',
                              textWeight: FontWeight.w600,
                              size: 15,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text('Active'),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),



          ),
        ),
      ),
    );
  }
}
