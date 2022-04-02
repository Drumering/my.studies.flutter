import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/controllers/menu_controller.dart';
import 'package:flutter_blog/screens/home/content.dart';
import 'package:flutter_blog/screens/main/components/header.dart';
import 'package:flutter_blog/screens/main/components/side_menu.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(controller: _controller),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: const SafeArea(child: Content()),
            )
          ],
        ),
      ),
    );
  }
}
