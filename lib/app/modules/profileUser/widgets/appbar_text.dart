import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "nabil_alftr09",
          style:
              TextStyle(color: ColorsName.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        const Image(
          image: AssetImage("image/ig.png"),
          fit: BoxFit.cover,
          width: 15,
          height: 15,
        ),
        InkWell(
          splashColor: ColorsName.white,
          hoverColor: ColorsName.white,
          onTap: () {},
          child: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: ColorsName.black,
            size: 25,
          ),
        )
      ],
    );
  }
}
