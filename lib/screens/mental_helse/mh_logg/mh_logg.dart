import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mh_logg_controller.dart';

class MhLogg extends GetView<MhLoggController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("MH logg siden")),
    );
  }
}
