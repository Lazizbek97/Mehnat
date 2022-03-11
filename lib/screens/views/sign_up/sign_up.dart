import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/core/widgets/email_input.dart';
import 'package:mehnatkash/core/widgets/top_login_profile.dart';

import '../../../core/widgets/password_input.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController _nameConstroller = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordConstroller = TextEditingController();
  final TextEditingController _confirmPasswordConstroller =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: getHeight(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LoginTopPart(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, getHeight(20), 0, getHeight(5)),
                        child: Text(
                          "WELCOME BACK",
                          style: GoogleFonts.merriweather(
                            color: Constants.color30,
                            fontSize: Constants.boardingTitle1,
                            fontWeight: Constants.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                height: getHeight(550),
                width: getWidth(345),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20,
                    )
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EmailNameInput(
                          constroller: _nameConstroller, hintText: "Name"),
                      EmailNameInput(
                          constroller: _phonenumberController, hintText: "Phone number"),
                      PasswordInput(
                          passwordConstroller: _passwordConstroller,
                          hintText: "Password"),
                      PasswordInput(
                        passwordConstroller: _confirmPasswordConstroller,
                        hintText: "Confirm Password",
                      ),
                      SizedBox(
                        height: getHeight(50),
                        width: getWidth(285),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("SIGN UP"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have account?",
                            style: TextStyle(
                              fontSize: Constants.disTextSize,
                              color: Constants.color80,
                              fontWeight: Constants.semiBold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontWeight: Constants.bold,
                                fontSize: Constants.disTextSize,
                                color: Constants.color30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
