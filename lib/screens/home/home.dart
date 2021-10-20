import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
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
            padding: EdgeInsets.only(bottom: 20),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Scrollbar(
                thickness: 10,
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 40, bottom: 20),
                          child: Text(
                            "Hvordan føler du deg mentalt?",
                            style: TextStyle(fontSize: 24),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          color: Colors.transparent,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Angst",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          controller.sliderValueText,
                                          style: TextStyle(
                                              fontSize: 40, letterSpacing: 0),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Icon(
                                            Icons.thumb_down_sharp,
                                            color: Colors.white,
                                          ),
                                          RotatedBox(
                                            quarterTurns: 3,
                                            child: SizedBox(
                                              child: SliderTheme(
                                                data: SliderTheme.of(context)
                                                    .copyWith(
                                                        activeTrackColor:
                                                            Colors.red.shade800,
                                                        inactiveTrackColor:
                                                            Colors.green,
                                                        thumbColor:
                                                            Colors.white,
                                                        trackHeight: 20,
                                                        thumbShape:
                                                            RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              20,
                                                        ),
                                                        overlayShape:
                                                            RoundSliderOverlayShape(
                                                                overlayRadius:
                                                                    25.0)),
                                                child: Slider(
                                                    min: 0,
                                                    max: 100,
                                                    value: controller
                                                        .sliderValue.value,
                                                    onChanged:
                                                        controller.onChanged),
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.thumb_up_alt_sharp,
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
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Colors.transparent,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Motivasjon",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          controller.sliderValueTwoText,
                                          style: TextStyle(
                                              fontSize: 40, letterSpacing: 0),
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
                                                data: SliderTheme.of(context)
                                                    .copyWith(
                                                        activeTrackColor:
                                                            Colors.green,
                                                        inactiveTrackColor:
                                                            Colors.red.shade800,
                                                        thumbColor:
                                                            Colors.white,
                                                        trackHeight: 20,
                                                        thumbShape:
                                                            RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              20,
                                                        ),
                                                        overlayShape:
                                                            RoundSliderOverlayShape(
                                                                overlayRadius:
                                                                    25.0)),
                                                child: Slider(
                                                    min: 0,
                                                    max: 100,
                                                    value: controller
                                                        .sliderValueTwo.value,
                                                    onChanged: controller
                                                        .onChangedTwo),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Card(
                          color: Colors.transparent,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Produktivitet",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          controller.sliderValueThreeText,
                                          style: TextStyle(
                                              fontSize: 40, letterSpacing: 0),
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
                                                data: SliderTheme.of(context)
                                                    .copyWith(
                                                        activeTrackColor:
                                                            Colors.green,
                                                        inactiveTrackColor:
                                                            Colors.red.shade800,
                                                        thumbColor:
                                                            Colors.white,
                                                        trackHeight: 20,
                                                        thumbShape:
                                                            RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              20,
                                                        ),
                                                        overlayShape:
                                                            RoundSliderOverlayShape(
                                                                overlayRadius:
                                                                    25.0)),
                                                child: Slider(
                                                    min: 0,
                                                    max: 100,
                                                    value: controller
                                                        .sliderValueThree.value,
                                                    onChanged: controller
                                                        .onChangedThree),
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
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                alignment: Alignment.center,
                              ),
                              onPressed: () {},
                              child: Text("Neste")))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
