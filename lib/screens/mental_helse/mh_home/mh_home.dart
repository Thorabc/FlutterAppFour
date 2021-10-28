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
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Text(
            "Mental helse",
            style: TextStyle(fontSize: 24),
          ),
          ExpansionTile(
            title: Text("Nettsider:"),
            children: [
              Container(
                width: 300,
                height: 100,
                child: ListView(
                  children: [
                    Text(
                      "Kognitiv terapi:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("https://www.kognitiv.no/kognitiv-terapi/")
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
