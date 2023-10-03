import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class ContainerIcon extends StatelessWidget {
  final double size, left, right;
  final IconData iconData;

  const ContainerIcon({
    super.key,
    required this.size,
    required this.iconData,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left, right: right),
      child: FaIcon(
        iconData,
        size: size,
        color: ColorsName.black,
      ),
    );
  }
}
