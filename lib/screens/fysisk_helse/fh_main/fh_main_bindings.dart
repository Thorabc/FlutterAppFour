import 'package:get/get.dart';

import 'fh_main_controller.dart';

class FhMainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhMainController>(
      () => FhMainController(),
    );
  }
}
