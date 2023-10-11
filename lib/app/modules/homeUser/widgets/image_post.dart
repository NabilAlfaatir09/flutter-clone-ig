import 'package:flutter/material.dart';

class ImagePost extends StatelessWidget {
  final String imagePost;
  const ImagePost({
    super.key,
    required this.imagePost,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePost,
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
