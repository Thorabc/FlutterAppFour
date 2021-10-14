import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var quotes = [];
//   @override
//   Widget build(BuildContext context) {
//     print(quotes);
//     return Scaffold(
//       body: Center(
//         child: ListView(
//           children: quotes.map((quote) {
//             return ListTile(
//               title: Text("hei på deg"),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }

//   getDio() async {
//     try {
//       var response =
//           await Dio(BaseOptions(headers: {"Content-Type": "application/json"}))
//               .get('https://type.fit/api/quotes');
//       var data = response.data;
//       setState(() {
//         var quotes = json.decode(data);
//         print(quotes[0]["text"]);
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
// }

class Home extends GetView<HomeController> {
  @override
  Home() {
    getDio();
  }

  getDio() async {
    try {
      var response =
          await Dio(BaseOptions(headers: {"Content-Type": "application/json"}))
              .get('https://type.fit/api/quotes');
      var data = response.data;
      controller.quotes.value = json.decode(data);
      print(controller.quotes[0]["text"]);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: controller.quotes.map((quote) {
            return Card(
              child: Text(quote["text"]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
