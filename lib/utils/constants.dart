import 'package:flutter/material.dart';

const paddingSize = 25.0;
const padding = EdgeInsets.symmetric(horizontal: paddingSize);

const blackColor = Color.fromRGBO(48, 47, 48, 1);
const greyColor = Color.fromRGBO(141, 141, 141, 1);
const whiteColor = Colors.white;
const darkBlueColor = Color.fromRGBO(20, 25, 45, 1);

const TextTheme defaultTextTheme = TextTheme(
  headline1: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 26),
  headline2: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 22),
  headline3: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 20),
  headline4: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 16),
  headline5: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 14),
  headline6: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(color: blackColor, fontWeight: FontWeight.w500, fontSize: 14, height: 1.5),
  bodyText2: TextStyle(color: greyColor, fontWeight: FontWeight.w500, fontSize: 14, height: 1.5),
  subtitle1: TextStyle(color: blackColor, fontWeight: FontWeight.w400, fontSize: 12),
  subtitle2: TextStyle(color: greyColor, fontWeight: FontWeight.w400, fontSize: 12),
);

const TextTheme smallTextTheme = TextTheme(
  headline1: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 22),
  headline2: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 20),
  headline3: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 18),
  headline4: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 14),
  headline5: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 12),
  headline6: TextStyle(color: blackColor, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(color: blackColor, fontWeight: FontWeight.w500, fontSize: 12, height: 1.5),
  bodyText2: TextStyle(color: greyColor, fontWeight: FontWeight.w500, fontSize: 12, height: 1.5),
  subtitle1: TextStyle(color: blackColor, fontWeight: FontWeight.w400, fontSize: 10),
  subtitle2: TextStyle(color: greyColor, fontWeight: FontWeight.w400, fontSize: 10),
);