import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class LoginWithPhone {
  static String verificationID = "";
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static void loginWithPhone(String phoneNumber) async {
    _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential).then((value) async {
            if (value.user != null) {
              debugPrint("User already logged in");
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          debugPrint(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationID = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  static void verifyOTP(
    String sentCode,
  ) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationID, smsCode: sentCode);
      await _auth.signInWithCredential(credential).then((value) {
        if (value.user != null) {}
      });
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  static Future SignIn(BuildContext context, var number) async {
    await _auth
        .signInWithPhoneNumber(
      number,
    )
        .then((value)async {
    await  Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
    });
  }
}