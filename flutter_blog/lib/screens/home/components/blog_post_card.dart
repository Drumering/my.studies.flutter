import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/models/blog.dart';
import 'package:flutter_blog/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(aspectRatio: 1.78, child: Image.asset(blog.image)),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Design'.toUpperCase(),
                        style: const TextStyle(
                            color: kDarkBlackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title,
                    style: GoogleFonts.raleway(
                        fontSize: Responsive.isDesktop(context) ? 32 : 24,
                        color: kDarkBlackColor,
                        height: 1.3,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(blog.description),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                            padding: const EdgeInsets.only(
                                bottom: kDefaultPadding / 4),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: kPrimaryColor, width: 3))),
                            child: const Text('Read More',
                                style: TextStyle(color: kDarkBlackColor)))),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/feather_thumbs-up.svg')),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/feather_message-square.svg')),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/feather_share-2.svg')),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
