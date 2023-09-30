import 'package:flutter/widgets.dart';
import 'package:flutter_slicing_ui_instagram/app/modules/homeUser/views/home_user_view.dart';
import 'package:flutter_slicing_ui_instagram/app/modules/profileUser/views/profile_user_view.dart';
import 'package:get/get.dart';

import '../widgets/reels_user.dart';
import '../widgets/post_user.dart';
import '../widgets/explore_user.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void nextIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> myWidget = [
    const HomeUserView(),
    const ExploreUser(),
    const PostUser(),
    const ReelsUser(),
    const ProfileUserView(),
  ];
}
