import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class RowMenuItem extends StatelessWidget {
  final double right;
  final double left;
  final IconData iconData;
  final double sizeIcon;
  final String text;
  const RowMenuItem({
    super.key,
    required this.right,
    required this.iconData,
    required this.sizeIcon,
    required this.text,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: left, right: right, bottom: 23),
          child: FaIcon(
            iconData,
            size: sizeIcon,
            color: ColorsName.black,
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 23),
            child: Text(
              text,
              style: TextStyle(color: ColorsName.black, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
