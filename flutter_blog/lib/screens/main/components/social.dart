import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/behance-alt.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
        ),
        SvgPicture.asset('assets/icons/feather_twitter.svg'),
        const SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding)),
            onPressed: () {},
            child: const Text('Lets Talk')),
      ],
    );
  }
}
