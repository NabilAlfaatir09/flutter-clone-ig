import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerIconBottomSheet extends StatelessWidget {
  final IconData iconData;
  final Color color;
  const ContainerIconBottomSheet({
    super.key,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 17, right: 10),
      child: FaIcon(
        iconData,
        size: 22,
        color: color,
      ),
    );
  }
}
