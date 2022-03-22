import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_web/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Burguer'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: kTextcolor, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nCurabitur quis tristique tortor. Donec id vulputate erat. Nulla facilisi.\nSed sodales erat nibh, at sodales libero ultrices vel.',
            style: TextStyle(fontSize: 21, color: kTextcolor.withOpacity(0.34)),
          ),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFF372930),
                  borderRadius: BorderRadius.circular(38)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        color: kPrimaryColor, shape: BoxShape.circle),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF372930), shape: BoxShape.circle),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text('Get Started'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19)),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
