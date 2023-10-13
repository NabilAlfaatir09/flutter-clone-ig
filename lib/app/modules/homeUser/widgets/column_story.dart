import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import 'circle_story.dart';

class ColumnStory extends StatelessWidget {
  final AssetImage assetImage;
  final String text;
  const ColumnStory({
    super.key,
    required this.text,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleStory(
          assetImage: assetImage,
          width: 75,
          height: 75,
          margin: 4,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: ColorsName.black, fontSize: 12),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
