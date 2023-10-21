import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ContainerFilter extends StatelessWidget {
  const ContainerFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(top: 17),
      child: Text(
        "Filter",
        style: TextStyle(
            color: ColorsName.blue, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
