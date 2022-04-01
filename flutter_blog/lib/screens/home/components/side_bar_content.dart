import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';

class SideBarContent extends StatelessWidget {
  const SideBarContent({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding / 4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: kDarkBlackColor, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          child,
        ],
      ),
    );
  }
}
