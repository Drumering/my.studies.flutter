import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/screens/main/main_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData myTheme = ThemeData(
      // colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor),
      // primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kBgColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: kBodyTextColor),
        bodyText2: TextStyle(color: kBodyTextColor),
        headline5: TextStyle(color: kDarkBlackColor),
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Blog',
      theme: myTheme,
      home: const MainScreen(),
    );
  }
}
