import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';

class ContainerSearch extends StatelessWidget {
  const ContainerSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 11, left: 15, right: 18),
      height: 37,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorsName.grey350,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12, right: 14),
            alignment: Alignment.centerLeft,
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorsName.black,
              size: 16,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Cari",
              style: TextStyle(fontSize: 17, color: ColorsName.black),
            ),
          ),
        ],
      ),
    );
  }
}
