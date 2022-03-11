import 'package:flutter/material.dart';
import 'package:mehnatkash/screens/views/home_page/home_page.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(),
        );
    }
    return null;
  }
}