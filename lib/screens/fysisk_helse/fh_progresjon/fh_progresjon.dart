import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_progresjon_controller.dart';

class FhProgresjon extends GetView<FhProgresjonController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "FH Progresjon siden",
        style: Theme.of(context).textTheme.headline1,
      )),
    );
  }
}
