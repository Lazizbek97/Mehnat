import 'package:flutter/material.dart';
import 'package:mehnatkash/screens/views/get_started_page/get_started_page.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const GetStartedPage(),
        );
    }
    return null;
  }
}