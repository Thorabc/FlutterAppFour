import 'package:get/get.dart';

import 'mh_main_controller.dart';

class MhMainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhMainController>(
      () => MhMainController(),
    );
  }
}
