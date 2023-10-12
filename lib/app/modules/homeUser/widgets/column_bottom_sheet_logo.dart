import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class ColumnLogoBottomSheet extends StatelessWidget {
  final String text;
  final IconData iconData;
  const ColumnLogoBottomSheet({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: ColorsName.black),
              shape: BoxShape.circle),
          child: Center(
              child: FaIcon(
            iconData,
            size: 20,
            color: Colors.black,
          )),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
