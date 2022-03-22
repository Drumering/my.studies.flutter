import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function()? press;
  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 25, vertical: 25)),
          ),
          onPressed: press,
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          )),
    );
  }
}
