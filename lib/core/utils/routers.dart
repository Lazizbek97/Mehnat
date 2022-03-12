import 'package:flutter/material.dart';
import 'package:mehnatkash/screens/views/announcement_page/announcement_page.dart';
import 'package:mehnatkash/screens/views/habarlar_page/habarlar_page.dart';
import 'package:mehnatkash/screens/views/home_page/home_page.dart';
import 'package:mehnatkash/screens/views/profile_page/glavni_profile_page/glavni_profile_page.dart';
import 'package:mehnatkash/screens/views/profile_page/settings_page/all_settings/all_settings_page.dart';
import 'package:mehnatkash/screens/views/profile_page/settings_page/change_passwords/change_password.dart';
import 'package:mehnatkash/screens/views/profile_page/settings_page/tilni_ozgartirish_page/tilni_ozgartirish_page.dart';
import 'package:mehnatkash/screens/views/saved_page/saved_page.dart';

import 'package:mehnatkash/screens/views/sign_in/sign_in.dart';
import 'package:mehnatkash/screens/views/sign_up/sign_up.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(

          builder: (_) => const AnnouncementPage(),
        );
      case "/sign_in":
        return MaterialPageRoute(
          builder: (_) => Sing_in_Page(),
        );
      case "/sign_up":
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );

      case "/profile":
        return MaterialPageRoute(
          builder: (_) => const Profile_page(),
        );
      case "/saved":
        return MaterialPageRoute(
          builder: (_) => const SavedPage(),
        );
      case "/xabar":
        return MaterialPageRoute(
          builder: (_) => const XabarlarPage(),
        );

      case "/home":
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(),
        );



      case "/announcement":
        return MaterialPageRoute(
          builder: (_) => const AnnouncementPage(),
        );

          case "/setting":
        return MaterialPageRoute(
          builder: (_) => const All_settings_page(),
        );
         case "/language":
        return MaterialPageRoute(
          builder: (_) => const ChangeLanguagePage(),
        );
          case "/password":
        return MaterialPageRoute(
          builder: (_) =>  ChangePasswordPage(),
        );
      
    }
    return null;
  }
}
