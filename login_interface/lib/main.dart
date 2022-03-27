import 'package:flutter/material.dart';
import 'package:login_interface/screens/home_page.dart';
import 'package:login_interface/screens/login_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (BuildContext context) => const HomePage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
      initialRoute: '/home',
    );
  }
}
