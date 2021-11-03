import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class Login extends GetView<LoginController> {
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
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60),
              alignment: Alignment.center,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.Home),
                        child: Text("Logg inn")),
                  ),
                  TextButton(
                    style: ButtonStyle(),
                    onPressed: () => Get.toNamed(Routes.Register),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Har du ikke en bruker? \n register deg her!",
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
    );
  }
}
