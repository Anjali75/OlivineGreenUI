import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color colors;

  CustomText({
    required this.text,
    required this.size,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ));
  }
}
