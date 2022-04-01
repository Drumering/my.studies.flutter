import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/screens/home/components/side_bar_content.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContent(
      title: 'Search',
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            hintText: 'Type here ...',
            suffixIcon: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: SvgPicture.asset('assets/icons/feather_search.svg'),
            ),
            border: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(kDefaultPadding / 2)),
              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
            )),
      ),
    );
  }
}
