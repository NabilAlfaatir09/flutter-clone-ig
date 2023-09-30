import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ExpandedIcon extends StatelessWidget {
  final IconData iconData;
  const ExpandedIcon({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IconButton(
        splashColor: ColorsName.white,
        highlightColor: ColorsName.white,
        hoverColor: ColorsName.white,
        onPressed: () {},
        icon: Icon(
          iconData,
          size: 30,
          color: ColorsName.black,
        ),
        color: ColorsName.black,
      ),
    );
  }
}
