import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/screens/home/components/side_bar_content.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContent(
        title: 'Categories',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Category(
              title: 'Artificial Intelligence',
              numberOfItems: 10,
              onPress: () {},
            ),
            Category(
              title: 'Augmented Reality',
              numberOfItems: 3,
              onPress: () {},
            ),
            Category(
              title: 'Develoment',
              numberOfItems: 4,
              onPress: () {},
            ),
            Category(
              title: 'Flutter UI',
              numberOfItems: 18,
              onPress: () {},
            ),
          ],
        ));
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.title,
    required this.numberOfItems,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final int numberOfItems;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
          onPressed: onPress,
          child: Text.rich(TextSpan(
              text: title,
              style: const TextStyle(color: kDarkBlackColor),
              children: [
                TextSpan(
                    text: ' ($numberOfItems)',
                    style: const TextStyle(color: kBodyTextColor))
              ]))),
    );
  }
}
