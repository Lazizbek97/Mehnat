import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static final Color _whiteColor = const Color(0xffFFFFFF);
  static final Color _blackColor = const Color(0xff242424);

  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.nunitoSans().fontFamily,

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: _blackColor,
        textStyle: TextStyle(
          color: _whiteColor,
        ),
      ),
    ),

    // ? Appbars Style

    appBarTheme: AppBarTheme(
      foregroundColor: _blackColor,
      backgroundColor: _whiteColor,
      elevation: 0,
      titleTextStyle: GoogleFonts.gelasio(color: _blackColor),
    ),

    // ? Scaffold background Color

    scaffoldBackgroundColor: _whiteColor,

    // ? Floating action Buttons styles

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _blackColor,
      foregroundColor: _whiteColor,
    ),
  );
}