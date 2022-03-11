import 'package:flutter/material.dart';
import 'package:mehnatkash/screens/views/get_started_page/get_started_page.dart';
import 'package:mehnatkash/screens/views/sign_in/sign_in.dart';

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
    }
    return null;
  }
}
