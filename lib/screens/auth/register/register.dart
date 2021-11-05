import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:flutter_application_4/screens/auth/auth_controller.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class Register extends GetView<RegisterController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
        ),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.blue.shade200,
                      Colors.blue.shade400,
                      Colors.blue.shade600,
                      Colors.blue.shade800,
                    ],
                  ),
                ),
                child: Text(
                  "Registrer",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.symmetric(horizontal: 60),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AuthController.instance.login(
                            emailController.text.trim(),
                            passwordController.text.trim());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue.shade50,
                              Colors.blue.shade200,
                              Colors.blue.shade400,
                              Colors.blue.shade600,
                            ],
                          ),
                        ),
                        child: Text("Registrer",
                            style: TextStyle(color: Colors.white)),
                      ),
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
      ),
    );
  }
}
