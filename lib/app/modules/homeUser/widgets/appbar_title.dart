import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Instagram",
      style: TextStyle(
        color: ColorsName.black,
        fontSize: 30,
        fontFamily: "Billabong",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
