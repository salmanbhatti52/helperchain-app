//flutter version 3.0.0
//dart sdk 2.17.0
//main logo size h * 0.15
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:helpers_chain/Screens/Store/my-store/my-store.dart';
import 'package:helpers_chain/Screens/Store/store-screen.dart';
import 'package:helpers_chain/Screens/dashboard/dashboard.dart';
import 'package:helpers_chain/Screens/offers/offers.dart';
import 'package:helpers_chain/login-register-bvn-screens/bvn-screens/data-after-bvn.dart';
import 'package:helpers_chain/login-register-bvn-screens/login-screen.dart';
import 'package:helpers_chain/login-register-bvn-screens/register-screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Auth/mixin/data.dart';
import 'Screens/Store/my-store-items/add-my-store.dart';
import 'Screens/Store/my-store-items/edit-my-store.dart';
import 'Screens/checking grid and list view.dart';
import 'Screens/credit-thrift/credit-thrift-details.dart';
import 'Screens/offers/offers-details/all-feature-offersdetails.dart';
import 'login-register-bvn-screens/verification-screens/subscribe-as-member.dart';
import 'onboarding/splash-screen.dart';

late Box box;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppData.initiate();

  await Hive.initFlutter();
  Box box = await Hive.openBox('box');

  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Rubik'
      ),

      home: const Offers(),

    );
  }
}