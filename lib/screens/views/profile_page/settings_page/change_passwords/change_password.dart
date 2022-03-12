import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Parolni o'zgartirish",
          style: GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
