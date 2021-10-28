import 'package:get/get.dart';

import 'resultat_controller.dart';

class MhResultatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MhResultatController>(
      () => MhResultatController(),
    );
  }
}
