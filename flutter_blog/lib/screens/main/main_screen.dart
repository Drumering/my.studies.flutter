import 'package:flutter/material.dart';
import 'package:flutter_blog/components/header.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/screens/home/content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxHeight: kMaxWidth),
              child: const Content(),
            )
          ],
        ),
      ),
    );
  }
}