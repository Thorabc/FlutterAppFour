import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
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

  getText() {
    if (sliderValue.value == 100) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value >= 75) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "Nå vil det føles tungt og dette er et tegn på at dette er noe du trenger å trene på, men stå i det og det vil bli bedre!",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value > 50) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "Ting over her kan føles litt tungt.",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value == 50) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "Denne er du ikke helt sikker på enda",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    if (sliderValue.value > 25) {
      return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "Her har du relativt lav angst, for å bli bedre må det være høyere på angst-meteret",
          style: TextStyle(fontSize: 16),
        ),
      );
    }
    return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 120,
        width: 250,
        color: getColor(),
        child: Text(
          "Dette takler du bra, stå på!",
          style: TextStyle(fontSize: 16),
        ));
  }
}
