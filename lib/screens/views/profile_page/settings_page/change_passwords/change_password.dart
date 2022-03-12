import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/core/widgets/email_input.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final _EskipasswordController = TextEditingController();
  final _yangiPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
        child:SingleChildScrollView(child:  Padding(
          padding: EdgeInsets.only(left: getWidth(20), right: getWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(30),
              ),
              Text(
                "Eski parolni kiriting::",
                style:
                    GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
              ),
              EmailNameInput(
                  constroller: _EskipasswordController,
                  hintText: "Eski parol..."),
              SizedBox(
                height: getHeight(30),
              ),
              Text("Yangi parolni kiriting:",
                  style: GoogleFonts.merriweather(
                      fontSize: Constants.appbarTitle)),
              EmailNameInput(
                  constroller: _yangiPasswordController,
                  hintText: "Yangi parol.."),
              SizedBox(
                height: getHeight(30),
              ),
              Text("Yangi parolni tasdiqlang:",
                  style: GoogleFonts.merriweather(
                      fontSize: Constants.appbarTitle)),
              EmailNameInput(
                  constroller: _confirmPasswordController,
                  hintText: "Parolni tasdiqlang.."),
              SizedBox(
                height: getHeight(270),
              ),
              ElevatedButton(
                child: const Text("Saqlash"),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, getHeight(50))),
                onPressed: () {},
              )
            ],
          ),
        ),)
      ),
    );
  }
}
