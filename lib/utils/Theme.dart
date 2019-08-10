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
  static const Color grayThree = const Color(0xFFB1B1B1);
  static const Color flatRed = const Color(0xFFF96133);
  static const Color flatOrange = const Color(0xFFFF9233);
  static const Color flatPurple = const Color(0xFF8E3DD1);
  static const Color flatDeepPurple = const Color(0xFF462066);
}

class TextTheme {
  const TextTheme();

  static TextStyle regularText = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white);

  static TextStyle regularTextBlack = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w200,
      fontSize: 16,
      height: 1,
      color: Colors.black);

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
      fontWeight: FontWeight.w500,
      fontSize: 26,
      color: Colors.black);

  static TextStyle titleSemiBoldPurple = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Colors.flatPurple);

  static TextStyle titleRegularGray = TextStyle(
      fontFamily: "pop",
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.grayThree);

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
