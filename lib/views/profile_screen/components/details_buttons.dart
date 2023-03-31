import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
Widget detailsCart({width,String? count,String? title}){
  return Column(
    children: [
      "00".text.fontFamily(bold).color(darkFontGrey).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(4))
      .make();
}