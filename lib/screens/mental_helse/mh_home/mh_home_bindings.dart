import 'package:get/get.dart';
import 'mh_home_controller.dart';

class MhHomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhHomeController>(
      () => MhHomeController(),
    );
  }
}
