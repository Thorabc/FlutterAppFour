import 'package:get/get.dart';

import 'resultat_controller.dart';

class ResultatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultatController>(
      () => ResultatController(),
    );
  }
}
