import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline5: base.headline5!.copyWith(
          fontFamily: GoogleFonts.raleway().toString(),
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline4: base.headline4!.copyWith(
            fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      primaryColor: Colors.blue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xff5618FF),
            )),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Color(0xff5618FF),
        ),
      ),
      scaffoldBackgroundColor: Color(0xfff5f5f5));
}

Decoration nowBox = BoxDecoration(
  border: Border.all(
    color: Colors.grey.shade300,
    width: 2,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
);
