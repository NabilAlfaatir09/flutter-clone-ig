import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class CircleStory extends StatelessWidget {
  final double width, height, margin;
  const CircleStory({
    super.key,
    required this.width,
    required this.height,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      padding: const EdgeInsets.all(2),
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorsName.gradient1, ColorsName.gradient2],
        ),
        borderRadius: BorderRadiusDirectional.circular(50),
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: ColorsName.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const CircleAvatar(
          backgroundImage: AssetImage("image/pp.jpeg"),
        ),
      ),
    );
  }
}
