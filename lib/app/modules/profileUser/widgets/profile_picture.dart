import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(2),
      width: 80,
      height: 80,
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
