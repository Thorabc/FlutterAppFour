import 'package:get/get.dart';

import 'fh_home_controller.dart';

class FhHomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhHomeController>(
      () => FhHomeController(),
    );
  }
}
