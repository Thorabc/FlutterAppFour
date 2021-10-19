import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxDouble sliderValue = 0.0.obs;
  RxDouble sliderValueTwo = 0.0.obs;
  RxDouble sliderValueThree = 0.0.obs;

  get sliderValueText => sliderValue.value.toInt().toString();
  get sliderValueTwoText => sliderValueTwo.value.toInt().toString();
  get sliderValueThreeText => sliderValueThree.value.toInt().toString();

  void onChanged(double value) {
    sliderValue.value = value.roundToDouble();
    print(sliderValue.value);
  }

  void onChangedTwo(double value) {
    sliderValueTwo.value = value.roundToDouble();
    print(sliderValueTwo.value);
  }

  void onChangedThree(double value) {
    sliderValueThree.value = value.roundToDouble();
    print(sliderValueThree.value);
  }

  Color getColor() {
    return Color.lerp(Colors.green, Colors.red, sliderValue.value / 100)!;
  }

  // Color getColor() {
  //   if (sliderValue.value == 100) {
  //     return Colors.red.shade900;
  //   }
  //   if (sliderValue.value > 75) {
  //     return Colors.red.shade700;
  //   }

  //   if (sliderValue.value == 50) {
  //     return Colors.white;
  //   }
  //   if (sliderValue.value > 25) {
  //     return Colors.green.shade700;
  //   }
  //   if (sliderValue.value >= 0) {
  //     return Colors.green.shade900;
  //   }
  //   return Colors.white;
  // }

  getText() {
    if (sliderValue.value == 100) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 100,
        width: 250,
        color: getColor(),
        child: Text(
          "Nå er angsten din veldig høy, dette ser ut som er noe du må trene mer på og husk: øvelse \ngjør mester!",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value >= 75) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: 200,
        color: getColor(),
        child: Text(
          "Nå er det mer enn 75",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value > 50) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: 200,
        color: getColor(),
        child: Text(
          "Nå er det mer enn 50",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value == 50) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: 200,
        color: getColor(),
        child: Text(
          "Nå er den på midten",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value > 25) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: 200,
        color: getColor(),
        child: Text(
          "Nå er det mer enn 25",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 50,
        width: 200,
        color: getColor(),
        child: Text(
          "Dette ser det ut som du takler bra, stå på!",
          style: TextStyle(fontSize: 16),
        ));
  }
}
