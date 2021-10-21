import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Scrollbar(
            thickness: 10,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    alignment: Alignment.center,
                    child: Text(
                      "Selvutviklingsapp",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: Colors.white24,
                          padding: EdgeInsets.all(10),
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Mental Helse",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Gå til siden for mental helse!",
                                    textAlign: TextAlign.center,
                                  )),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue.shade600),
                                  onPressed: () => Get.toNamed(Routes.mhMain),
                                  child: Text(
                                    "gå til",
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white24,
                          padding: EdgeInsets.all(10),
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Fysisk Helse",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Gå til siden for fysisk helse!",
                                    textAlign: TextAlign.center,
                                  )),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue.shade600),
                                  onPressed: () {},
                                  child: Text(
                                    "gå til",
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
