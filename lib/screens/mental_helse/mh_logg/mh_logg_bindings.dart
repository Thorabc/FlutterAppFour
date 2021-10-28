import 'package:get/get.dart';

import 'mh_logg_controller.dart';

class MhLoggBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhLoggController>(
      () => MhLoggController(),
    );
  }
}
