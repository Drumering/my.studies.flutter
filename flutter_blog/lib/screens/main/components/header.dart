import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/logo.svg'),
                      const Spacer(),
                      WebMenu(),
                      const Spacer(),
                      const Social()
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  const Text(
                    'Welcome to our Blog',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet porta lorem. Donec accumsan elit eget euismod molestie. Praesent eu vestibulum orci.',
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: const [
                              Text(
                                'Lear More',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
