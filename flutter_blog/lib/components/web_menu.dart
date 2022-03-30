import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/controllers/menu_controller.dart';
import 'package:get/get.dart';

class WebMenu extends StatelessWidget {
  WebMenu({
    Key? key,
  }) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
        children: List.generate(
            _controller.menuItems.length,
            (index) => WebMenuItem(
                  label: _controller.menuItems[index],
                  isActive: index == _controller.selectedIndex,
                  onpress: () => _controller.setMenuIndex(index),
                ))));
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.label,
    this.onpress,
  }) : super(key: key);

  final bool isActive;
  final String label;
  final Function()? onpress;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    }
    if (!widget.isActive && _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpress,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: _borderColor(),
            width: 3,
          ),
        )),
        child: Text(
          widget.label,
          style: TextStyle(
              color: Colors.white,
              fontWeight:
                  widget.isActive ? FontWeight.w600 : FontWeight.normal),
        ),
      ),
    );
  }
}
