import 'package:flutter/material.dart';
import 'package:mehnatkash/screens/views/get_started_page/get_started_page.dart';
import 'package:mehnatkash/screens/views/profile_page/glavni_profile_page/glavni_profile_page.dart';
import 'package:mehnatkash/screens/views/sign_in/sign_in.dart';
import 'package:mehnatkash/screens/views/sign_up/sign_up.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const GetStartedPage(),
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
    }
    return null;
  }
}
