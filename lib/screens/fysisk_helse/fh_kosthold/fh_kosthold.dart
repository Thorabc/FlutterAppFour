import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fh_kosthold_controller.dart';

class FhKosthold extends GetView<FhKostholdController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 30,
            bottom: 30,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Kosthold",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.black87),
                ),
              ),
              Questions("Hvor mye fisk spiser du i uka?", "Svar i gram"),
              Questions(
                "Hvor mye av fisken du spiser er fet fisk (laks, ørret, makrell eller sild)?",
                "Svar i gram",
              ),
              Questions(
                "Hvor mange meieriprodukter spiser eller drikker du om dagen?",
                "Svar i antall",
              ),
              Questions("Hvor mye grønnsaker spiser du daglig?", "Svar i gram"),
              Questions("Hvor mye frukt spiser du daglig?", "Svar i gram"),
            ],
          ),
        ),
      ),
    );
  }
}

class Questions extends StatelessWidget {
  String questions;
  String hintText;

  Questions(
    this.questions,
    this.hintText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 30, left: 20),
      child: Card(
        elevation: 3,
        color: Colors.transparent,
        child: Container(
          width: 300,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questions,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.white),
              ),
              Container(
                width: 100,
                height: 30,
                margin: EdgeInsets.only(top: 40),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.white70),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
