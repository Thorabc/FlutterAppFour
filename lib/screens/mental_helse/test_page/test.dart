import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'test_controller.dart';

class Test extends GetView<TestController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue.shade50,
          Colors.blue.shade200,
          Colors.blue.shade400,
          Colors.blue.shade600,
        ],
      )),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Scrollbar(
            thickness: 10,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 20),
                      child: const Text(
                        "Hvordan føler du deg mentalt?",
                        style: TextStyle(fontSize: 24),
                      )),
                  CustomCard(
                    "Angst",
                    0,
                  ),
                  CustomCard(
                    "Motivasjon",
                    1,
                  ),
                  CustomCard(
                    "Produktivitet",
                    2,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {},
                      child: const Text("Neste"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  var controller = Get.find<TestController>();

  String title;

  int valuesIndex;

  void onChanged(double value) {
    controller.values[valuesIndex].value = value;
  }

  CustomCard(this.title, this.valuesIndex);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          controller.values[valuesIndex].value
                              .toInt()
                              .toString(),
                          style:
                              const TextStyle(fontSize: 40, letterSpacing: 0),
                        ),
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.thumb_up_alt_sharp,
                            color: Colors.white,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: SizedBox(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.green,
                                    inactiveTrackColor: Colors.red.shade800,
                                    thumbColor: Colors.white,
                                    trackHeight: 20,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 20,
                                    ),
                                    overlayShape: const RoundSliderOverlayShape(
                                        overlayRadius: 25.0)),
                                child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: controller.values[valuesIndex].value,
                                    onChanged: onChanged),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.thumb_down_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
