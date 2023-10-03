import 'package:flutter/material.dart';

class ImagePost extends StatelessWidget {
  const ImagePost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "image/pp.jpeg",
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
