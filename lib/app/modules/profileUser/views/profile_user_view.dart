import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/profile_user_controller.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/appbar_text.dart';
import '../widgets/body_list_view.dart';
import '../widgets/container_add_post.dart';
import '../widgets/container_profile_menu.dart';

class ProfileUserView extends GetView<ProfileUserController> {
  const ProfileUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorsName.transparant,
        backgroundColor: ColorsName.transparant,
        title: const AppbarText(),
        actions: [
          AppbarIcon(
            function: () {
              Get.bottomSheet(
                ListView(
                  shrinkWrap: true,
                  children: const [ContainerAddPost()],
                ),
                isScrollControlled: true,
                isDismissible: true,
              );
            },
            icon: Icons.add_box_outlined,
          ),
          AppbarIcon(
            function: () {
              Get.bottomSheet(
                ListView(
                    shrinkWrap: true, children: const [ContainerProfileMenu()]),
                isScrollControlled: true,
                isDismissible: true,
              );
            },
            icon: Icons.menu,
          ),
        ],
      ),
      body: const SafeArea(child: BodyListView()),
    );
  }
}
