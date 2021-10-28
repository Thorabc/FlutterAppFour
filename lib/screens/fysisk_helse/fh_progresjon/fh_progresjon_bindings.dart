import 'package:get/get.dart';

import 'fh_progresjon_controller.dart';

class FhProgresjonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhProgresjonController>(
      () => FhProgresjonController(),
    );
  }
}
