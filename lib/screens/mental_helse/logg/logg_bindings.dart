import 'package:get/get.dart';

import 'logg_controller.dart';

class LoggBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoggController>(
      () => LoggController(),
    );
  }
}
