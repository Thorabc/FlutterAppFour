import 'package:get/get.dart';

import 'fh_kosthold_controller.dart';

class FhResultatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhKostholdController>(
      () => FhKostholdController(),
    );
  }
}
