import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:flutter_application_4/theme/app_theme.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class Register extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
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
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 30),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Register",
                style: Theme.of(context).textTheme.headline1,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Navn",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Repeat password",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                          onPressed: () => Get.toNamed(Routes.Login),
                          child: Text("Register")),
                    ),
                    TextButton(
                      style: ButtonStyle(),
                      onPressed: () => Get.toNamed(Routes.Login),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Har du allerede en bruker? \n logg inn her!",
                          style: TextStyle(color: Colors.blue.shade500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
