import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ExpandedText extends StatelessWidget {
  final String textAngka, textHuruf;
  final double fontSizeAngka, fontSizeHuruf;

  const ExpandedText({
    super.key,
    required this.textAngka,
    required this.textHuruf,
    required this.fontSizeAngka,
    required this.fontSizeHuruf,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            textAngka,
            style: TextStyle(
                color: ColorsName.black,
                fontWeight: FontWeight.bold,
                fontSize: fontSizeAngka),
          ),
          Text(
            textHuruf,
            style: TextStyle(color: ColorsName.black, fontSize: fontSizeHuruf),
          ),
        ],
      ),
    );
  }
}
