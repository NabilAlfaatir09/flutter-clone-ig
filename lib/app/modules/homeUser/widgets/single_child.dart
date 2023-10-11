import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_user_controller.dart';
import 'column_bottom_sheet_logo.dart';
import 'column_story.dart';
import 'circle_story.dart';
import 'container_icon.dart';
import 'container_image_icon.dart';
import 'container_like_text.dart';
import 'container_text_post.dart';
import 'image_post.dart';

class SingleChild extends StatelessWidget {
  final controll = Get.put(HomeUserController());
  SingleChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey[300]!))),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ColumnStory(text: "Cerita Anda"),
                  ColumnStory(text: "Cerita 1"),
                  ColumnStory(text: "Cerita 2"),
                  ColumnStory(text: "Cerita 3"),
                  ColumnStory(text: "Cerita 4"),
                  ColumnStory(text: "Cerita 5"),
                  ColumnStory(text: "Cerita 6"),
                  ColumnStory(text: "Cerita 7"),
                  ColumnStory(text: "Cerita 8"),
                  ColumnStory(text: "Cerita 9"),
                  ColumnStory(text: "Cerita 10"),
                  ColumnStory(text: "Cerita 11"),
                  ColumnStory(text: "Cerita 12"),
                  ColumnStory(text: "Cerita 13"),
                  ColumnStory(text: "Cerita 14"),
                  ColumnStory(text: "Cerita 15"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              const CircleStory(
                width: 35,
                height: 35,
                margin: 7,
              ),
              const Text(
                "nabil_alftr09",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                "image/ig.png",
                fit: BoxFit.cover,
                width: 15,
                height: 15,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                        height: 700,
                        color: ColorsName.white,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 30),
                                width: 43,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: ColorsName.grey700,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ColumnLogoBottomSheet(
                                  iconData: FontAwesomeIcons.bookmark,
                                  text: "Simpan",
                                ),
                                ColumnLogoBottomSheet(
                                  iconData: FontAwesomeIcons.qrcode,
                                  text: "Kode QR",
                                ),
                              ],
                            ),
                          ],
                        )),
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    enableDrag: true,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              margin: const EdgeInsets.all(0),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                items: const [
                  ImagePost(
                    imagePost: "image/pp.jpeg",
                  ),
                  ImagePost(
                    imagePost: "image/astro.jpg",
                  ),
                  ImagePost(imagePost: "image/apo.jpg"),
                ],
              )),
          // const ImagePost(),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Obx(
                () => InkWell(
                  focusColor: ColorsName.white,
                  hoverColor: ColorsName.white,
                  highlightColor: ColorsName.white,
                  splashColor: ColorsName.white,
                  onTap: () {
                    controll.likePost.value = !controll.likePost.value;
                  },
                  child: (controll.likePost.value)
                      ? ContainerIcon(
                          size: 22,
                          iconData: Icons.favorite_rounded,
                          color: ColorsName.red,
                          left: 10,
                          right: 16,
                        )
                      : ContainerIcon(
                          left: 10,
                          right: 16,
                          size: 22,
                          iconData: FontAwesomeIcons.heart,
                          color: ColorsName.black,
                        ),
                ),
              ),
              const ContainerImageIcon(
                image: "image/comment.png",
              ),
              const ContainerImageIcon(
                image: "image/plane.png",
              ),
              const Spacer(),
              ContainerIcon(
                left: 0,
                right: 16,
                size: 20,
                iconData: FontAwesomeIcons.ellipsis,
                color: ColorsName.black,
              ),
              const Spacer(),
              Obx(() => InkWell(
                    focusColor: ColorsName.white,
                    hoverColor: ColorsName.white,
                    splashColor: ColorsName.white,
                    highlightColor: ColorsName.white,
                    onTap: () {
                      controll.savePost.value = !controll.savePost.value;
                      (controll.savePost.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost.value)
                        ? ContainerIcon(
                            size: 24,
                            iconData: Icons.bookmark,
                            left: 58,
                            right: 18,
                            color: ColorsName.black)
                        : ContainerIcon(
                            left: 60,
                            right: 22,
                            size: 20,
                            iconData: FontAwesomeIcons.bookmark,
                            color: ColorsName.black,
                          ),
                  )),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const ContainerLikeText(),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              ContainerTextPost(
                text: "nabil_alftr09",
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: ColorsName.black,
                left: 10,
              ),
              ContainerTextPost(
                text: "Lorem ipsum dolor sit amet, consectetur..",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: ColorsName.black,
                left: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          ContainerTextPost(
            text: "10 menit yang lalu",
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: ColorsName.grey700!,
            left: 10,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
