import 'package:get/get.dart';

import '../controllers/explore_user_controller.dart';

class ExploreUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExploreUserController>(
      () => ExploreUserController(),
    );
  }
}
