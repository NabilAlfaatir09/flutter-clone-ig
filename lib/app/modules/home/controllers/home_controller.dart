import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../widgets/home_user.dart';
import '../widgets/reels_user.dart';
import '../widgets/post_user.dart';
import '../widgets/explore_user.dart';
import '../widgets/profile_user.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void nextIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> myWidget = [
    const HomeUser(),
    const ExploreUser(),
    const PostUser(),
    const ReelsUser(),
    const ProfileUser(),
  ];
}
