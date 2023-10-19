import 'package:get/get.dart';

import '../controllers/mesengger_controller.dart';

class MesenggerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MesenggerController>(
      () => MesenggerController(),
    );
  }
}
