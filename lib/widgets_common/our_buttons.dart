import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress,color,textColor,String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: redColor,
        padding: const EdgeInsets.all(17),
      ),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}