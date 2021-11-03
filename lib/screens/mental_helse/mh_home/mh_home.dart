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
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            height: 170,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTile(
                    title: Container(
                      child: Text(
                        "Nettsider:",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white70),
                      ),
                    ),
                    children: [
                      Container(
                        height: 100,
                        padding: EdgeInsets.only(left: 20),
                        child: ListView(
                          children: [
                            Text(
                              "Kognitiv terapi:",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text("https://www.kognitiv.no/kognitiv-terapi"),
                            Text(
                              "Healthy Gamer:",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(
                              "https://www.healthygamer.gg",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ExpansionTile(
                    title: Container(
                      child: Text(
                        "Discord:",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white70),
                      ),
                    ),
                    children: [
                      Container(
                        height: 100,
                        padding: EdgeInsets.only(left: 20),
                        child: ListView(
                          children: [
                            Text(
                              "Healthy Gamer:",
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text("https://discord.gg/healthygamergg"),
                          ],
                        ),
                      )
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
