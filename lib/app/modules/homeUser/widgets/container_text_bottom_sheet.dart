import 'package:flutter/material.dart';

class ContainerTextBottomSheet extends StatelessWidget {
  final Color color;
  final String text;
  const ContainerTextBottomSheet(
      {super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: color),
    );
  }
}
