import 'package:flutter/material.dart';

class AlignText extends StatelessWidget {
  final FontWeight? fontWeight;
  final String text;
  final Color? color;
  final double fontSize;
  const AlignText({
    super.key,
    required this.fontSize,
    required this.text,
    required this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
