import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static const Color _whiteColor = Color(0xffFFFFFF);
  static const Color _blackColor = Color(0xff242424);

  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.nunitoSans().fontFamily,

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: _blackColor,
        textStyle: const TextStyle(
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

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _blackColor,
      foregroundColor: _whiteColor,
    ),
  );
}
