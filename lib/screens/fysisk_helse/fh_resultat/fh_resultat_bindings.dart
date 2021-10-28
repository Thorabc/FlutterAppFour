import 'package:get/get.dart';

import 'fh_resultat_controller.dart';

class FhResultatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FhResultatController>(
      () => FhResultatController(),
    );
  }
}
