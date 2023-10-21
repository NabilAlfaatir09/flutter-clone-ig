import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class ListTileChat extends StatelessWidget {
  final String title, subtitle;
  final AssetImage assetImage;
  const ListTileChat({
    super.key,
    required this.assetImage,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        margin: const EdgeInsets.only(right: 5),
        width: 48,
        height: 48,
        child: CircleAvatar(
          backgroundImage: assetImage,
        ),
      ),
      title: Container(
        margin: const EdgeInsets.only(bottom: 3),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 15,
              color: ColorsName.black,
              fontWeight: FontWeight.w500),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 14, color: ColorsName.grey700),
      ),
      trailing: Icon(
        Icons.camera_alt_outlined,
        size: 28,
        color: ColorsName.black,
      ),
    );
  }
}
