import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/Exercise.dart';

class FhLoggController extends GetxController {
  final ovelseNavnTextEditingController = TextEditingController().obs;
  final repsEditingController = TextEditingController().obs;
  final vektEditingController = TextEditingController().obs;

  void addExcersice() {
    var exerciseNameText = ovelseNavnTextEditingController.value.text;
    var repsText = repsEditingController.value.text;
    var weightText = vektEditingController.value.text;
    if (exerciseNameText.isNotEmpty &&
        repsText.isNotEmpty &&
        weightText.isNotEmpty) {
      try {
        var ex = Exercise(
          name: exerciseNameText,
          reps: int.parse(repsText),
          weight: int.parse(weightText),
        );
        exercises.add(ex);
      } catch (e) {
        print(e);
      }
    }
    print(exercises);
  }

  final exercises = [].obs;

  var selected = "".obs;
}
