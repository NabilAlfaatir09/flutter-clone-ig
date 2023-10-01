import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_instagram/app/data/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.myWidget.elementAt(controller.currentIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => controller.nextIndex(value),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: 25,
              color: ColorsName.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
              color: ColorsName.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "image/add.png",
              width: 27,
              height: 27,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "image/reels.png",
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.all(0),
              width: 30,
              height: 30,
              child: const CircleAvatar(
                backgroundImage: AssetImage("image/pp.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
