import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Til tanlang",
          style: GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (_, __) {
              return const Card(
                child: ListTile(
                  title: Text("O'zbekcha"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
