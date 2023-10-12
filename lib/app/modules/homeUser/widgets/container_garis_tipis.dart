import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ContainerGarisTipis extends StatelessWidget {
  final double top, bottom;
  const ContainerGarisTipis({
    super.key,
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top, bottom: bottom),
      width: double.infinity,
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsName.grey350!),
      ),
    );
  }
}
