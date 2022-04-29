import 'package:flutter/material.dart';
import 'package:mobx_intro/stores/consumption_list.dart';
import 'package:mobx_intro/stores/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'screens/home.dart';
part 'screens/about.dart';

void main() {
  runApp(const MyApp());
}

final counter = Counter();
final consumptionList = ConsumptionList();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },
      initialRoute: '/',
    );
  }
}
