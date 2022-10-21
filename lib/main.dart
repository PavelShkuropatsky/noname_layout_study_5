import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noname_layout_study_5/utils/constants.dart';

import 'presenter/pages/landing_page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Episode 1',
      theme: ThemeData(
        primaryColor: whiteColor,
        textTheme: screenWidth < 500 ? smallTextTheme : defaultTextTheme,
        fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkBlueColor),
      ),
      home: const LandingPage(),
    );
  }
}
