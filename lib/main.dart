import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mehnatkash/core/utils/main_theme.dart';
import 'package:mehnatkash/core/utils/routers.dart';
import 'package:mehnatkash/screens/providers/filter_provider.dart';
import 'package:mehnatkash/screens/providers/user_type_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _auth = FirebaseAuth.instance;

  final RouteGenerator _router = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => UserTypeProvider())),
        ChangeNotifierProvider(create: ((context) => FilterProvider()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mehnat',
        theme: MainTheme.light,
        initialRoute: _auth.currentUser != null ? "/home":"/",
        onGenerateRoute: _router.routeGenerate,
      ),
    );
  }
}
