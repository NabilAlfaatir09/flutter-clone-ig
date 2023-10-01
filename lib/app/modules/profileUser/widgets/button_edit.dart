import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ButtonEdit extends StatelessWidget {
  const ButtonEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(foregroundColor: ColorsName.white),
        onPressed: () {},
        child: Text(
          "Edit Profile",
          style: TextStyle(
            color: ColorsName.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
