import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/profile_user_controller.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/appbar_text.dart';
import '../widgets/body_list_view.dart';

class ProfileUserView extends GetView<ProfileUserController> {
  const ProfileUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: ColorsName.transparant,
        backgroundColor: ColorsName.transparant,
        title: const AppbarText(),
        actions: const [
          AppbarIcon(
            icon: Icons.add_box_outlined,
          ),
          AppbarIcon(
            icon: Icons.menu,
          ),
        ],
      ),
      body: const BodyListView(),
    );
  }
}
