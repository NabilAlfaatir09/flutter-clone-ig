import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_instagram/app/data/colors.dart';

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
              icon: Icon(
                Icons.home,
                size: 30,
                color: ColorsName.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search,
                size: 30,
                color: ColorsName.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.add_box_rounded,
                size: 30,
                color: ColorsName.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.video_collection_outlined,
                size: 30,
                color: ColorsName.black,
              ),
            ),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: ColorsName.black,
                )),
          ]),
    );
  }
}
