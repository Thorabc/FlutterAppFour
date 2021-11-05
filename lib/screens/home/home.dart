import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:flutter_application_4/screens/auth/auth_controller.dart';
import 'package:flutter_application_4/theme/theme_constants.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends GetView<HomeController> {
  String email;
  Home({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue[50]!,
            Colors.blue.shade200,
            Colors.blue.shade400,
            Colors.blue.shade600,
          ],
        ),
      ),
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "Velkommen til selvutviklingsappen, ",
                            style: Theme.of(context).textTheme.headline1!,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 30,
                            top: 2,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            email,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      "Selv om det er mange temaer innenfor selvutvikling, har vi valgt å fokusere på mental og fysisk helse i denne appen. For \n å bidra til at du blir mer bevisst på utfordringer og progresjon relatert til de.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
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
                                  style: Theme.of(context).textTheme.headline2,
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
                                  style: Theme.of(context).textTheme.headline2,
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
                                  onPressed: () => Get.toNamed(Routes.FhMain),
                                  child: Text(
                                    "gå til",
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    child: GestureDetector(
                      onTap: () {
                        AuthController.instance.logOut();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.topLeft,
                            colors: [
                              Colors.blue.shade200,
                              Colors.blue.shade200,
                              Colors.blue.shade400,
                              Colors.blue.shade800,
                            ],
                          ),
                        ),
                        child: Text(
                          "Logg ut",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
