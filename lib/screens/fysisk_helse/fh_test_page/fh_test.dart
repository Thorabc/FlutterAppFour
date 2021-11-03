import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_test_controller.dart';

class FhTest extends GetView<FhTestController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "FH Test siden",
        style: Theme.of(context).textTheme.headline1,
      )),
    );
  }
}
