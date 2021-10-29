import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'mh_home_controller.dart';

class MhHome extends GetView<MhHomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Mental helse",
            style: TextStyle(fontSize: 24),
          ),
          Container(
            height: 170,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTile(
                    title: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Nettsider:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    children: [
                      Container(
                        height: 100,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: ListView(
                            children: [
                              Text(
                                "Kognitiv terapi:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text("https://www.kognitiv.no/kognitiv-terapi"),
                              Text(
                                "Healthy Gamer:",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text("https://www.healthygamer.gg")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ExpansionTile(
                    title: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Discord:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    children: [
                      Container(
                        child: Text(
                          "Healthy Gamer:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("https://discord.gg/healthygamergg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
