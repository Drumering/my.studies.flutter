import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/models/blog.dart';
import 'package:flutter_blog/responsive.dart';
import 'package:flutter_blog/screens/home/components/blog_post_card.dart';
import 'package:flutter_blog/screens/home/components/categories.dart';
import 'package:flutter_blog/screens/home/components/recent_posts.dart';
import 'package:flutter_blog/screens/home/components/search.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
                blogPosts.length,
                (index) => BlogPostCard(
                      blog: blogPosts[index],
                    )),
          ),
        ),
        if (!Responsive.isMobile(context))
          const SizedBox(
            width: kDefaultPadding,
          ),
        //Side bar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: const [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
