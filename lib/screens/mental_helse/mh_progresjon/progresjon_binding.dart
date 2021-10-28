import 'package:flutter_application_4/screens/mental_helse/mh_progresjon/progresjon_controller.dart';
import 'package:get/get.dart';

import 'progresjon_controller.dart';

class MhProgresjonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhProgresjonController>(
      () => MhProgresjonController(),
    );
  }
}
