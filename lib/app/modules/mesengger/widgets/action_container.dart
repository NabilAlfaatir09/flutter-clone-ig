import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class ActionContainer extends StatelessWidget {
  final double right, left;
  final IconData iconData;
  const ActionContainer({
    super.key,
    required this.left,
    required this.right,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(right: right, left: left),
        child: FaIcon(
          iconData,
          color: ColorsName.black,
          size: 22,
        ),
      ),
    );
  }
}
