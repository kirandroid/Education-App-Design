import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Colors {
  const Colors();

  static const Color primaryColor = const Color(0xFFD01118);
  static const Color secondaryColor = const Color(0xFF000000);
  static const Color white = const Color(0xFFFFFFFF);
  static const Color black = const Color(0xFF000000);
  static const Color grayOne = const Color(0xFFEEEEEE);
  static const Color grayTwo = const Color(0xFFDDDDDD);
  static const Color mediumGray = const Color(0xFF888888);
  static Color textDarkGray = Color.fromRGBO(51, 51, 51, 0.75);
  static const Color darkGray = const Color(0xFF777777);
  static const Color darkerGray = const Color(0xFF454545);
  static const Color blueGrey = const Color(0xFF8D92A3);
  static const Color flatRed = const Color(0xFFF96133);
  static const Color flatOrange = const Color(0xFFFF9233);
  static const Color flatPurple = const Color(0xFF8E3DD1);
  static const Color flatDeepPurple = const Color(0xFF462066);
  static const Color flatRed40 = const Color(0x66F96133);
  static const Color flatOrange40 = const Color(0x66FF9233);
  static const Color flatPurple40 = const Color(0x668E3DD1);
  static const Color flatDeepPurple40 = const Color(0x66462066);
}

class TextTheme {
  const TextTheme();

  static TextStyle regularText = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white);

  static TextStyle regularTextPurple = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.flatDeepPurple);

  static TextStyle regularTextWhite = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.white);

  static TextStyle bigTitleLight = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w300,
      fontSize: 26,
      color: Colors.black);

  static TextStyle bigTitleSemiBold = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w600,
      fontSize: 26,
      color: Colors.black);

  static TextStyle titleRegularBlack = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.black);

  static TextStyle titleRegularOrange = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.flatOrange);
}
