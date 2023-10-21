import 'package:flutter/material.dart';

class ContainerActionColor extends StatelessWidget {
  final double top, left, right, width;
  final String text;
  final Color colorContainer;
  final Color colorText;
  const ContainerActionColor({
    super.key,
    required this.top,
    required this.left,
    required this.right,
    required this.width,
    required this.colorContainer,
    required this.colorText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left, top: top, right: right),
      height: 33,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorContainer,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 12, color: colorText),
      )),
    );
  }
}
