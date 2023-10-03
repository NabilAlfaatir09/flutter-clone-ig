import 'package:flutter/material.dart';

class ContainerImageIcon extends StatelessWidget {
  final String image;
  const ContainerImageIcon({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Image.asset(
        image,
        width: 20,
        height: 20,
      ),
    );
  }
}
