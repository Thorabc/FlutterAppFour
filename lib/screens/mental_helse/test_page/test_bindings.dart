import 'package:flutter_application_4/screens/mental_helse/test_page/test_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(
      () => TestController(),
    );
  }
}
