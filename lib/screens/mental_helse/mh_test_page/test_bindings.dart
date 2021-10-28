import 'package:flutter_application_4/screens/mental_helse/mh_test_page/test_controller.dart';
import 'package:get/get.dart';

import 'test_controller.dart';

class MhTestBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhTestController>(
      () => MhTestController(),
    );
  }
}
