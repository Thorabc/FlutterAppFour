import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_resultat_controller.dart';

class FhResultat extends GetView<FhResultatController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "FH Resultat siden",
        style: Theme.of(context).textTheme.headline1,
      )),
    );
  }
}
