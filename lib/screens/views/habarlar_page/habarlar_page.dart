import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';

class XabarlarPage extends StatelessWidget {
  const XabarlarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Xabarlar",
          style: GoogleFonts.merriweather(
            color: Constants.color30,
            fontSize: Constants.boardingTitle2,
          ),
        ),
      ),
      body: const SafeArea(
          child: Center(
        child: Text("Empty"),
      )),
    );
  }
}