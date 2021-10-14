import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:flutter_application_4/screens/root/root_controller.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        return Scaffold(
          drawer: null,
          appBar: null,
          body: GetRouterOutlet(
            initialRoute: Routes.Home,
            // anchorRoute: '/',
            filterPages: (afterAnchor) {
              return afterAnchor.take(1);
            },
          ),
        );
      },
    );
  }
}
