import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/colors.dart';
import 'container_container_rounded.dart';

class ContainerAddPost extends StatelessWidget {
  const ContainerAddPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 515,
      decoration: BoxDecoration(
        color: ColorsName.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const CenterContainerRounded(),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                "Buat",
                style: TextStyle(
                  color: ColorsName.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12, bottom: 15),
                child: Image.asset(
                  "image/reels.png",
                  width: 30,
                  height: 30,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Reel",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
                child: const FaIcon(
                  FontAwesomeIcons.tableCells,
                  size: 22,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Posting",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 13, right: 13, bottom: 15),
                child: const Icon(
                  Icons.add_circle_outline,
                  size: 28,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Cerita",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: const FaIcon(
                  FontAwesomeIcons.heartCirclePlus,
                  size: 22,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Sorotan Cerita",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 13, right: 13, bottom: 15),
                child: const Icon(
                  Icons.podcasts_outlined,
                  size: 28,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Siaran Langsung",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14, right: 14, bottom: 15),
                child: const Icon(
                  Icons.menu_book_outlined,
                  size: 28,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Panduan",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
                child: const FaIcon(
                  FontAwesomeIcons.arrowTrendUp,
                  size: 22,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "Iklan",
                    style: TextStyle(fontSize: 15, color: ColorsName.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 31, bottom: 15),
            width: 425,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsName.grey350!),
            ),
          ),
        ],
      ),
    );
  }
}
