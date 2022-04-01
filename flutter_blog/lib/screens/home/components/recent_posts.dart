import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/screens/home/components/side_bar_content.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContent(
        title: 'Recent posted',
        child: Column(
          children: [
            RecentPostCard(
              title: 'Our "Secret" Formula to Online Workshops',
              image: 'assets/images/recent_1.png',
              onPress: () {},
            ),
            const SizedBox(height: kDefaultPadding),
            RecentPostCard(
              title:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dictum lectus, et pharetra arcu.',
              image: 'assets/images/recent_2.png',
              onPress: () {},
            )
          ],
        ));
  }
}

class RecentPostCard extends StatelessWidget {
  const RecentPostCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String image, title;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPress,
        child: Row(
          children: [
            Expanded(flex: 2, child: Image.asset(image)),
            const SizedBox(width: kDefaultPadding),
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  maxLines: 2,
                  style: GoogleFonts.raleway(
                      color: kDarkBlackColor,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                )),
          ],
        ),
      ),
    );
  }
}
