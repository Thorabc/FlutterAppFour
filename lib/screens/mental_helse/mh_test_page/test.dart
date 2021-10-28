import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'test_controller.dart';

class MhTest extends GetView<MhTestController> {
  const MhTest({Key? key}) : super(key: key);

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
                    title: "Angst",
                    valuesIndex: 0,
                    isReversedThumbs: true,
                    isReversedColors: true,
                  ),
                  CustomCard(
                    title: "Motivasjon",
                    valuesIndex: 1,
                  ),
                  CustomCard(
                    title: "Produktivitet",
                    valuesIndex: 2,
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
  final controller = Get.put(MhTestController());

  String title;
  //IconData? icon;
  int valuesIndex;
  bool isReversedThumbs;
  bool isReversedColors;

  void onChanged(double value) {
    controller.values[valuesIndex].value = value;
  }

  CustomCard(
      {required this.title,
      required this.valuesIndex,
      this.isReversedColors = false,
      this.isReversedThumbs = false});

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
                          Icon(
                            isReversedThumbs
                                ? Icons.thumb_down_sharp
                                : Icons.thumb_up_alt_sharp,
                            color: Colors.white,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: SizedBox(
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: isReversedColors
                                        ? Colors.red.shade800
                                        : Colors.green,
                                    inactiveTrackColor: isReversedColors
                                        ? Colors.green
                                        : Colors.red.shade800,
                                    thumbColor: Colors.white,
                                    trackHeight: 20,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 20,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 25.0)),
                                child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: controller.values[valuesIndex].value,
                                    onChanged: onChanged),
                              ),
                            ),
                          ),
                          Icon(
                            isReversedThumbs
                                ? Icons.thumb_up_alt_sharp
                                : Icons.thumb_down_sharp,
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
