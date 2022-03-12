import 'package:flutter/material.dart';

class UserTypeProvider extends ChangeNotifier {
  String userType = "worker";

  chnageUserType() {
    userType == "worker" ? userType = "employee" : userType = "worker";
    notifyListeners();
    print("object");
  }
}
