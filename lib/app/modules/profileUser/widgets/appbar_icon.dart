import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  const AppbarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: ColorsName.white,
      hoverColor: ColorsName.white,
      onPressed: () {},
      icon: Icon(
        icon,
        size: 25,
        color: ColorsName.black,
      ),
    );
  }
}
