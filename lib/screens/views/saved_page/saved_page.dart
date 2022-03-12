import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Saqlanganlar",
          style: GoogleFonts.merriweather(
            color: Constants.color30,
            fontSize: Constants.appbarTitle,
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
