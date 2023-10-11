import 'package:get/get.dart';

import '../modules/exploreUser/bindings/explore_user_binding.dart';
import '../modules/exploreUser/views/explore_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeUser/bindings/home_user_binding.dart';
import '../modules/homeUser/views/home_user_view.dart';
import '../modules/profileUser/bindings/profile_user_binding.dart';
import '../modules/profileUser/views/profile_user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_USER,
      page: () => const HomeUserView(),
      binding: HomeUserBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_USER,
      page: () => const ProfileUserView(),
      binding: ProfileUserBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE_USER,
      page: () => const ExploreUserView(),
      binding: ExploreUserBinding(),
    ),
  ];
}
