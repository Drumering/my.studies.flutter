import 'package:flutter/material.dart';

class CommandButton extends StatelessWidget {
  const CommandButton(
      {Key? key, required this.icon, required this.title, this.onPress})
      : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: onPress,
            child: Column(
              children: [
                Icon(icon, color: Colors.lightBlue),
                Text(
                  title,
                  style: TextStyle(
                      color: onPress != null
                          ? Colors.black.withOpacity(0.6)
                          : Colors.black26),
                ),
              ],
            )));
  }
}
