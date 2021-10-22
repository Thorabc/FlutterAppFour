import 'package:flutter_application_4/screens/mental_helse/progresjon/progresjon_controller.dart';
import 'package:get/get.dart';

import 'progresjon_controller.dart';

class ProgresjonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgresjonController>(
      () => ProgresjonController(),
    );
  }
}
