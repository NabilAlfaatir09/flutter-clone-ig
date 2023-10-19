import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_user_controller.dart';
import 'column_story.dart';
import 'circle_story.dart';
import 'container_bottom_sheet.dart';
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
                  ColumnStory(
                      assetImage: AssetImage("image/pp.jpeg"),
                      text: "Cerita Anda"),
                  ColumnStory(
                      assetImage: AssetImage("image/apo.jpg"),
                      text: "Cerita 1"),
                  ColumnStory(
                      assetImage: AssetImage("image/astro.jpg"),
                      text: "Cerita 2"),
                  ColumnStory(
                      assetImage: AssetImage("image/lambo1.jpg"),
                      text: "Cerita 3"),
                  ColumnStory(
                      assetImage: AssetImage("image/lambo2.png"),
                      text: "Cerita 4"),
                  ColumnStory(
                      assetImage: AssetImage("image/spider.jpg"),
                      text: "Cerita 5"),
                  ColumnStory(
                      assetImage: AssetImage("image/sword.png"),
                      text: "Cerita 6"),
                  ColumnStory(
                      assetImage: AssetImage("image/pp.jpeg"),
                      text: "Cerita 7"),
                  ColumnStory(
                      assetImage: AssetImage("image/apo1.jpg"),
                      text: "Cerita 8"),
                  ColumnStory(
                      assetImage: AssetImage("image/apo2.jpg"),
                      text: "Cerita 9"),
                  ColumnStory(
                      assetImage: AssetImage("image/spi1.png"),
                      text: "Cerita 10"),
                  ColumnStory(
                      assetImage: AssetImage("image/spi2.jpg"),
                      text: "Cerita 11"),
                  ColumnStory(
                      assetImage: AssetImage("image/sword2.jpg"),
                      text: "Cerita 12"),
                  ColumnStory(
                      assetImage: AssetImage("image/sword1.jpg"),
                      text: "Cerita 13"),
                  ColumnStory(
                      assetImage: AssetImage("image/lambo3.png"),
                      text: "Cerita 14"),
                  ColumnStory(
                      assetImage: AssetImage("image/sword1.jpg"),
                      text: "Cerita 15"),
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
                assetImage: AssetImage("image/pp.jpeg"),
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
                autofocus: true,
                focusColor: ColorsName.white,
                hoverColor: ColorsName.white,
                highlightColor: ColorsName.white,
                splashColor: ColorsName.white,
                onTap: () {
                  Get.bottomSheet(
                    ListView(children: const [ContainerBottomSheet()]),
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
                  height: 365,
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
                    controll.likePost1.value = !controll.likePost1.value;
                  },
                  child: (controll.likePost1.value)
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
                      controll.savePost1.value = !controll.savePost1.value;
                      (controll.savePost1.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost1.value)
                        ? ContainerIcon(
                            size: 21,
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
            height: 10,
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
            height: 18,
          ),

          //Bagian 2
          Row(
            children: [
              const CircleStory(
                assetImage: AssetImage("image/lambo2.png"),
                width: 35,
                height: 35,
                margin: 7,
              ),
              const Text(
                "lambo_shop",
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
                autofocus: true,
                focusColor: ColorsName.white,
                hoverColor: ColorsName.white,
                highlightColor: ColorsName.white,
                splashColor: ColorsName.white,
                onTap: () {
                  Get.bottomSheet(
                    ListView(children: const [ContainerBottomSheet()]),
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
                  height: 365,
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                items: const [
                  ImagePost(
                    imagePost: "image/lambo1.jpg",
                  ),
                  ImagePost(
                    imagePost: "image/lambo2.png",
                  ),
                  ImagePost(imagePost: "image/lambo3.png"),
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
                    controll.likePost2.value = !controll.likePost2.value;
                  },
                  child: (controll.likePost2.value)
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
                      controll.savePost2.value = !controll.savePost2.value;
                      (controll.savePost2.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost2.value)
                        ? ContainerIcon(
                            size: 21,
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
            height: 10,
          ),
          const ContainerLikeText(),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              ContainerTextPost(
                text: "lambo_shop",
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
            text: "1 jam yang lalu",
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: ColorsName.grey700!,
            left: 10,
          ),
          const SizedBox(
            height: 18,
          ),

          //Bagian 3
          Row(
            children: [
              const CircleStory(
                assetImage: AssetImage("image/spider.jpg"),
                width: 35,
                height: 35,
                margin: 7,
              ),
              const Text(
                "spiderman",
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
                autofocus: true,
                focusColor: ColorsName.white,
                hoverColor: ColorsName.white,
                highlightColor: ColorsName.white,
                splashColor: ColorsName.white,
                onTap: () {
                  Get.bottomSheet(
                    ListView(children: const [ContainerBottomSheet()]),
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
                  height: 365,
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                items: const [
                  ImagePost(
                    imagePost: "image/spi1.png",
                  ),
                  ImagePost(
                    imagePost: "image/spi2.jpg",
                  ),
                  ImagePost(imagePost: "image/spider.jpg"),
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
                    controll.likePost3.value = !controll.likePost3.value;
                  },
                  child: (controll.likePost3.value)
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
                      controll.savePost3.value = !controll.savePost3.value;
                      (controll.savePost3.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost3.value)
                        ? ContainerIcon(
                            size: 21,
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
            height: 10,
          ),
          const ContainerLikeText(),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              ContainerTextPost(
                text: "spiderman",
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
            text: "2 jam yang lalu",
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: ColorsName.grey700!,
            left: 10,
          ),
          const SizedBox(
            height: 18,
          ),

          //Bagian 4
          Row(
            children: [
              const CircleStory(
                assetImage: AssetImage("image/apo1.jpg"),
                width: 35,
                height: 35,
                margin: 7,
              ),
              const Text(
                "Apocalypse_art",
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
                autofocus: true,
                focusColor: ColorsName.white,
                hoverColor: ColorsName.white,
                highlightColor: ColorsName.white,
                splashColor: ColorsName.white,
                onTap: () {
                  Get.bottomSheet(
                    ListView(children: const [ContainerBottomSheet()]),
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
                  height: 365,
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                items: const [
                  ImagePost(
                    imagePost: "image/apo1.jpg",
                  ),
                  ImagePost(
                    imagePost: "image/apo2.jpg",
                  ),
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
                    controll.likePost4.value = !controll.likePost4.value;
                  },
                  child: (controll.likePost4.value)
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
                      controll.savePost4.value = !controll.savePost4.value;
                      (controll.savePost4.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost4.value)
                        ? ContainerIcon(
                            size: 21,
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
            height: 10,
          ),
          const ContainerLikeText(),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              ContainerTextPost(
                text: "Apocalypse_art",
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
            text: "3 jam yang lalu",
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: ColorsName.grey700!,
            left: 10,
          ),
          const SizedBox(
            height: 18,
          ),

          //Bagian 5
          Row(
            children: [
              const CircleStory(
                assetImage: AssetImage("image/sword2.jpg"),
                width: 35,
                height: 35,
                margin: 7,
              ),
              const Text(
                "Sword_art",
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
                autofocus: true,
                focusColor: ColorsName.white,
                hoverColor: ColorsName.white,
                highlightColor: ColorsName.white,
                splashColor: ColorsName.white,
                onTap: () {
                  Get.bottomSheet(
                    ListView(children: const [ContainerBottomSheet()]),
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
                  height: 365,
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                items: const [
                  ImagePost(
                    imagePost: "image/sword1.jpg",
                  ),
                  ImagePost(
                    imagePost: "image/sword2.jpg",
                  ),
                  ImagePost(
                    imagePost: "image/sword.png",
                  ),
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
                    controll.likePost5.value = !controll.likePost5.value;
                  },
                  child: (controll.likePost5.value)
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
                      controll.savePost5.value = !controll.savePost5.value;
                      (controll.savePost5.value)
                          ? Get.snackbar("Success", "Berhasil ditambahkan",
                              duration: const Duration(seconds: 1))
                          : null;
                    },
                    child: (controll.savePost5.value)
                        ? ContainerIcon(
                            size: 21,
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
            height: 10,
          ),
          const ContainerLikeText(),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              ContainerTextPost(
                text: "Sword_art",
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
            text: "4 jam yang lalu",
            fontSize: 11,
            fontWeight: FontWeight.normal,
            color: ColorsName.grey700!,
            left: 10,
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
