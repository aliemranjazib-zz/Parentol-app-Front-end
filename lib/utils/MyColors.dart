import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors {
  static const Color textSelectionColor = const Color(0xFF636363);
  static const Color primaryColor = const Color(0xFF3DA0BF);
  static const Color accentColor = const Color(0xFFF3F7FA);
  static const Color buttonColor = const Color(0xFF41B781);
}

const texttheme = TextTheme(
  //main heading text style like login signup title etc
  headline1: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'ProximaBold',
      color: MyColors.textSelectionColor),
  headline2:
      TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
  //bold text
  headline3: TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 12,
      fontFamily: 'ProximaBold',
      color: MyColors.textSelectionColor),
  headline4: TextStyle(
      fontSize: 14.0,
      fontFamily: 'Proxima',
      color: MyColors.textSelectionColor),
  bodyText1: TextStyle(
      fontSize: 14.0, fontFamily: 'ProximaBold', color: MyColors.primaryColor),
  headline6: TextStyle(
      fontSize: 11.0,
      fontFamily: 'Proxima',
      color: MyColors.textSelectionColor),
);
