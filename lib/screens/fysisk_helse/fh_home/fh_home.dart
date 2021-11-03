import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_home_controller.dart';

class FhHome extends GetView<FhHomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          alignment: Alignment.topCenter,
          child: Text(
            "Hjem",
            style: Theme.of(context).textTheme.headline1,
          )),
    );
  }
}
