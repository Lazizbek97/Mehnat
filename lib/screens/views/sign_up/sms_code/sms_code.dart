import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehnatkash/core/constants/constants.dart';
import 'package:mehnatkash/core/utils/size_config.dart';
import 'package:mehnatkash/core/widgets/email_input.dart';
import 'package:mehnatkash/screens/views/sign_in/components/sign_in_func.dart';

class SmsCode extends StatelessWidget {
  var nomer;
  SmsCode({Key? key, this.nomer}) : super(key: key);
  final TextEditingController _smsController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sms code :)",
          style: GoogleFonts.merriweather(fontSize: Constants.appbarTitle),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: getWidth(110), top: getHeight(40)),
                child: Text(
                  "Sms codeni kiriting",
                  style: TextStyle(fontSize: getHeight(16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(110),
                ),
                child: Text(
                  "We have sent SMS to:",
                  style: TextStyle(
                      color: Constants.color80, fontSize: getHeight(13)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(110),
                ),
                child: Text(
                  "$nomer",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(20),
                    right: getWidth(20),
                    top: getHeight(40)),
                child: Form(
                    key: _formKey,
                    child: EmailNameInput(
                        constroller: _smsController, hintText: "Sms code")),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: getWidth(270), top: getHeight(25)),
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: Constants.color30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(20),
                    top: getHeight(40),
                    right: getWidth(20)),
                child: ElevatedButton(
                  child: const Text("Saqlash"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, getHeight(50))),
                  onPressed: () async {
                    LoginWithPhone.verifyOTP(_smsController.text);
                    Navigator.pushNamed(context, "/home");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
