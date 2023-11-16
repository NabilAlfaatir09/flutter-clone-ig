import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  final Function() function;
  const AppbarIcon({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: ColorsName.white,
      hoverColor: ColorsName.white,
      onPressed: function,
      icon: Icon(
        icon,
        size: 25,
        color: ColorsName.black,
      ),
    );
  }
}
