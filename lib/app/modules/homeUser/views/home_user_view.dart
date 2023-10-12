import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_user_controller.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/appbar_title.dart';
import '../widgets/single_child.dart';

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
      body: SafeArea(child: SingleChild()),
    );
  }
}
