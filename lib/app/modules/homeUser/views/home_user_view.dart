import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_user_controller.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/appbar_title.dart';
import '../widgets/circle_story.dart';
import '../widgets/column_story.dart';
import '../widgets/container_icon.dart';
import '../widgets/container_image_icon.dart';
import '../widgets/container_like_text.dart';
import '../widgets/container_text_post.dart';
import '../widgets/image_post.dart';

class HomeUserView extends GetView<HomeUserController> {
  const HomeUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsName.transparant,
        shadowColor: ColorsName.transparant,
        title: const AppbarTitle(),
        actions: const [
          AppbarIcon(
            paddingRight: 25,
            fontAwesomeIcons: FontAwesomeIcons.heart,
          ),
          AppbarIcon(
            paddingRight: 20,
            fontAwesomeIcons: FontAwesomeIcons.facebookMessenger,
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            Row(
              children: [
                const CircleStory(
                  width: 35,
                  height: 35,
                  margin: 7,
                ),
                const Text(
                  "nabil_alftr09",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: ColorsName.black,
                    size: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const ImagePost(),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                ContainerIcon(
                  left: 10,
                  right: 16,
                  size: 22,
                  iconData: FontAwesomeIcons.heart,
                ),
                ContainerImageIcon(image: "image/comment.png"),
                ContainerImageIcon(image: "image/plane.png"),
                Spacer(),
                ContainerIcon(
                  left: 0,
                  right: 16,
                  size: 20,
                  iconData: FontAwesomeIcons.ellipsis,
                ),
                Spacer(),
                ContainerIcon(
                  left: 60,
                  right: 22,
                  size: 20,
                  iconData: FontAwesomeIcons.bookmark,
                ),
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
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean..",
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
            )
          ],
        ),
      ),
    );
  }
}
