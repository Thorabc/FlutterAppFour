import 'package:get/get.dart';

import 'fh_logg_controller.dart';

class FhLoggBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhLoggController>(
      () => FhLoggController(),
    );
  }
}
