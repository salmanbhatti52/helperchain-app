
import 'package:flutter/material.dart';

import '../variables/globalVariables.dart';
///With Horizontal padding 20
class MyTextField extends StatelessWidget {

  final String? hintText;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final Color? bgColor;
  final double? width;
  final double? height;
  final BorderRadius? radius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Widget? prefixicon;
  final Widget? sufixicon;

  TextEditingController? controller;
  TextInputType? textInputType;

  MyTextField({
    this.textInputType=TextInputType.text,
    this.controller,
    this.hintText,
    this.hintStyle,
    this.bgColor,
    this.width,
    this.height,
    this.radius,
    this.minLines,
    this.maxLines,
    this.verticalPadding,
    this.horizontalPadding,
    this.prefixicon,
    this.sufixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor
      ),
      child: TextFormField(

          controller: controller,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: textInputType,
          cursorColor: KBlack,
          autofocus: false,
          style: const TextStyle(
              color: KBlack,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixicon,
            suffixIcon: sufixicon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: hintStyle,
          )
      ),
    );
  }
}




///With Horizontal padding 10
class MyIconTextField extends StatelessWidget {

  final String? hintText;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final Color? bgColor;
  final double? width;
  final double? height;
  final BorderRadius? radius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Widget? prefixicon;
  final Widget? sufixicon;

  TextEditingController? controller;
  TextInputType? textInputType;

  MyIconTextField({
    this.textInputType=TextInputType.text,
    this.controller,
    this.hintText,
    this.hintStyle,
    this.bgColor,
    this.width,
    this.height,
    this.radius,
    this.minLines,
    this.maxLines,
    this.verticalPadding,
    this.horizontalPadding,
    this.prefixicon,
    this.sufixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor
      ),
      child: TextFormField(

          controller: controller,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: textInputType,
          cursorColor: KBlack,
          autofocus: false,
          style: const TextStyle(
            color: KBlack,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixicon,
            suffixIcon: sufixicon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: hintStyle,
          )
      ),
    );
  }
}




///With Horizontal padding 10
class MyIconTextField1 extends StatelessWidget {

  final String? hintText;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final Color? bgColor;
  final double? width;
  final double? height;
  final BorderRadius? radius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Widget? prefixicon;
  final Widget? sufixicon;

  TextEditingController? controller;
  TextInputType? textInputType;
  TextInputAction? textInputAction;

  MyIconTextField1({
    this.textInputType=TextInputType.text,
    this.controller,
    this.hintText,
    this.hintStyle,
    this.bgColor,
    this.width,
    this.height,
    this.radius,
    this.minLines,
    this.maxLines,
    this.verticalPadding,
    this.horizontalPadding,
    this.prefixicon,
    this.sufixicon,
    this.textInputAction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3,vertical: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor
      ),
      child: TextFormField(
          controller: controller,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          cursorColor: KBlack,
          autofocus: false,
          style: const TextStyle(
            color: KBlack,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixicon,
            suffixIcon: sufixicon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: hintStyle,
          )
      ),
    );
  }
}

