import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class CenterContainerRounded extends StatelessWidget {
  const CenterContainerRounded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 30),
        width: 43,
        height: 4,
        decoration: BoxDecoration(
          color: ColorsName.grey700,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
