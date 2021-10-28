import 'package:get/get.dart';

import 'fh_test_controller.dart';

class FhTestBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhTestController>(
      () => FhTestController(),
    );
  }
}
