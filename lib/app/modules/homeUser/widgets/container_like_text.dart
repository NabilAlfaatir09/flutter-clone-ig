import 'package:flutter/material.dart';

class ContainerLikeText extends StatelessWidget {
  const ContainerLikeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      alignment: Alignment.topLeft,
      child: const Text(
        "5.000 suka",
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
