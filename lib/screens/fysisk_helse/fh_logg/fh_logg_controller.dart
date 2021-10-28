import 'package:get/get.dart';

import 'model/Exercise.dart';

class FhLoggController extends GetxController {
  final exercises = [
    Exercise(
      name: "Knebøy",
      reps: 10,
      weight: 30,
    ),
    Exercise(
      name: "Deltahev",
      reps: 12,
      weight: 3,
    ),
    Exercise(
      name: "Nedtrekk /m smalt grep",
      reps: 12,
      weight: 40,
    ),
    Exercise(
      name: "Bensenk + heel tap",
      reps: 10 + 20,
      weight: 0,
    ),
    Exercise(
      name: "Ettbeinspress",
      reps: 12,
      weight: 30,
    ),
    Exercise(
      name: "Flies i kabel",
      reps: 12,
      weight: 5,
    ),
    Exercise(
      name: "Dips på høy step-kasse",
      reps: 10,
      weight: 0,
    ),
    Exercise(
      name: "Preacher curl",
      reps: 10,
      weight: 2,
    )
  ];

  // var ovelser = [
//   'Knebøy'.obs,
  //   'Benpress'.obs,
  //   'Benkpress'.obs,
  //   'Sittende roing'.obs,
  // ].obs;
  // var reps = [
  //   '12'.obs,
  //   '8'.obs,
  //   '6'.obs,
  //   '8'.obs,
  // ].obs;
  // var vekt = [
  //   '60'.obs,
  //   '200'.obs,
  //   '40'.obs,
  //   '60'.obs,
  // ].obs;

  var selected = "".obs;
}
