import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class AppbarIcon extends StatelessWidget {
  final double paddingRight;
  final IconData fontAwesomeIcons;
  const AppbarIcon({
    super.key,
    required this.fontAwesomeIcons,
    required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: paddingRight),
      splashColor: ColorsName.transparant,
      hoverColor: ColorsName.transparant,
      highlightColor: ColorsName.transparant,
      onPressed: () {},
      icon: FaIcon(
        fontAwesomeIcons,
        size: 22,
        color: ColorsName.black,
      ),
    );
  }
}
