import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ColumnImage extends StatelessWidget {
  final String text;
  const ColumnImage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10,
          ),
          width: 60,
          height: 60,
          child: const CircleAvatar(
            backgroundImage: AssetImage("image/pp.jpeg"),
            minRadius: 15,
            maxRadius: 15,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12, color: ColorsName.black),
        ),
      ],
    );
  }
}
