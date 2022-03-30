import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/models/Blog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                  aspectRatio: 1.78, child: Image.asset(blogPosts[0].image)),
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
                          blogPosts[0].date,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Text(
                        blogPosts[0].title,
                        style: GoogleFonts.raleway(
                            fontSize: 32,
                            color: kDarkBlackColor,
                            height: 1.3,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(blogPosts[0].description),
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
        ),
        const SizedBox(
          width: kDefaultPadding,
        ),
        Expanded(
          child: Container(
            height: 400,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
