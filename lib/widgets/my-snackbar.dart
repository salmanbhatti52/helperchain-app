
import 'package:flutter/material.dart';
import 'package:get/get.dart';


ScaffoldFeatureController<SnackBar, SnackBarClosedReason> MySnackBar(context,title) {
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(title),
        backgroundColor: Colors.redAccent,
        duration: const Duration(milliseconds: 1150),
      )
  );
}



void showCustomSnackBar(String message, {bool isError = true}) {
  Get.showSnackbar(GetSnackBar(
    backgroundColor: isError ? Colors.red : Colors.green,
    message: message.isNull?" ":message.isEmpty?" ":message,
    // maxWidth: Dimensions.WEB_MAX_WIDTH,
    duration: Duration(seconds: 3),
    snackStyle: SnackStyle.FLOATING,
    // margin: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
    // borderRadius: Dimensions.RADIUS_SMALL,
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
  ));
}
