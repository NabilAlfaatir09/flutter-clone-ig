import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../exploreUser/views/explore_user_view.dart';
import '../../homeUser/views/home_user_view.dart';
import '../../profileUser/views/profile_user_view.dart';
import '../widgets/reels_user.dart';
import '../widgets/post_user.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void nextIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> myWidget = [
    const HomeUserView(),
    const ExploreUserView(),
    const PostUser(),
    const ReelsUser(),
    const ProfileUserView(),
  ];
}
