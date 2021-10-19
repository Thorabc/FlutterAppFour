import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: Text(
                      "Angst-meter",
                      style: TextStyle(fontSize: 24),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      child: Text(controller.sliderValueText),
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
                              data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.red.shade800,
                                  inactiveTrackColor: Colors.green,
                                  thumbColor: controller.getColor(),
                                  trackHeight: 20,
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 20,
                                  ),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 25.0)),
                              child: Slider(
                                  min: 0,
                                  max: 100,
                                  value: controller.sliderValue.value,
                                  onChanged: controller.onChanged),
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: controller.getText(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Bredde"),
                              Slider(
                                  min: 0,
                                  max: 200,
                                  value: controller.sliderValueTwo.value,
                                  onChanged: controller.onChangedTwo),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Høyde"),
                              Slider(
                                  min: 0,
                                  max: 200,
                                  value: controller.sliderValueThree.value,
                                  onChanged: controller.onChangedThree),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Bredde: " +
                                  controller.sliderValueTwoText +
                                  "px"),
                              Text("Høyde: " +
                                  controller.sliderValueThreeText +
                                  "px"),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            color: Colors.red,
                            width: controller.sliderValueTwo.value,
                            height: controller.sliderValueThree.value,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
