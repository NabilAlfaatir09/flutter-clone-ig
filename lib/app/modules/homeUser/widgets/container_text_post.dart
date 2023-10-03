import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_instagram/app/data/colors.dart';

class ContainerTextPost extends StatelessWidget {
  final String text;
  final double fontSize, left;
  final FontWeight fontWeight;
  final Color color;

  const ContainerTextPost({
    super.key,
    required this.text,
    required this.left,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left),
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: ColorsName.black,
        ),
      ),
    );
  }
}
