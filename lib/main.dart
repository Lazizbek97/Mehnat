import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/main_theme.dart';
import 'package:mehnatkash/core/utils/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final RouteGenerator _router = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Mehnat',
      theme: MainTheme.light,
<<<<<<< HEAD
      initialRoute: "/home",
=======
<<<<<<< HEAD
      initialRoute: "/profile",
=======

      initialRoute: "/announcement",

>>>>>>> 90cc263 (announcement page tayyor bo'layapti)
>>>>>>> a31ab11 (announcement page, get started page)
      onGenerateRoute: _router.routeGenerate,
    );
  }
}
