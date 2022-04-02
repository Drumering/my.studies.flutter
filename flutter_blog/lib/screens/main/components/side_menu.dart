import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/controllers/menu_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required MenuController controller,
  })  : _controller = controller,
        super(key: key);

  final MenuController _controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kDarkBlackColor,
        child: Obx(() => ListView(
              children: [
                DrawerHeader(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: SvgPicture.asset('assets/icons/logo.svg'),
                )),
                ...List.generate(
                    _controller.menuItems.length,
                    (index) => DrawerItem(
                        title: _controller.menuItems[index],
                        isActive: index == _controller.selectedIndex,
                        onPress: () {
                          _controller.setMenuIndex(index);
                        }))
              ],
            )),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final bool isActive;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: onPress,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
