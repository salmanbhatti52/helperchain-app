import 'package:flutter/material.dart';


class FeatureStoreModel {
  String img;

  FeatureStoreModel({
    required this.img,

  });

}

List <FeatureStoreModel> featurestorelist = [

  FeatureStoreModel( img: ('images/featuredStore/1.png'),),
  FeatureStoreModel( img: ('images/featuredStore/2.png'),),
  FeatureStoreModel( img: ('images/featuredStore/3.png'),),
  FeatureStoreModel( img: ('images/featuredStore/4.png'),),
  FeatureStoreModel( img: ('images/featuredStore/5.png'),),
  FeatureStoreModel( img: ('images/featuredStore/6.png'),),
  FeatureStoreModel( img: ('images/featuredStore/7.png'),),
  FeatureStoreModel( img: ('images/featuredStore/8.png'),),


];



class HomeKitchenModel {
  String fimg;
  String profileimg;
  String ratingimg;
  String title;
  String rating;
  String address;
  String time;
  Color bClr;
  Color lightAmber;
  Color lightGrey;
  bool isLiked;
  HomeKitchenModel({required this.isLiked,required this.fimg,required this.profileimg,required this.ratingimg,required this.title,required this.rating,required this.address,required this.time,required this.bClr,required this.lightAmber,required this.lightGrey});

}

List <HomeKitchenModel> homekitchenlist = [

  HomeKitchenModel( isLiked: true,fimg: ('images/cookingflame.png'), ratingimg: ('images/staricon.svg'), profileimg: ('images/profileimg.png'),title: '  Kitchen Name', rating: '5.0 (1960)', address: 'Address will come in this area',time: '  07:00 am to 07:00pm',  bClr: Colors.black, lightAmber: Color(0xffFF9100), lightGrey: Color(0xffFAFAFA)),
  HomeKitchenModel( isLiked: true,fimg: ('images/cookingconcept.png'), ratingimg: ('images/staricon.svg'), profileimg: ('images/cookingconcept.png'),title: '  Kitchen Name', rating: '5.0',address: 'Address will come in this area', time: '  07:00 am to 07:00pm',  bClr: Colors.black, lightAmber: Color(0xffFF9100), lightGrey: Color(0xffFAFAFA)),
  HomeKitchenModel( isLiked: true,fimg: ('images/cooking.png'), ratingimg: ('images/staricon.svg'), profileimg: ('images/cooking.png'), title: '  Kitchen Name', rating: '5.0',address: 'Address will come in this area', time: '  07:00 am to 07:00pm',  bClr: Colors.black, lightAmber: Color(0xffFF9100), lightGrey: Color(0xffFAFAFA)),

];





