import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_4/screens/mental_helse/logg/logg.dart';
import 'package:flutter_application_4/screens/mental_helse/resultat/resultat.dart';
import 'package:flutter_application_4/screens/mental_helse/test_page/test.dart';
import 'package:get/get.dart';

import 'mh_main_controller.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_4/screens/home/home.dart';
import 'package:flutter_application_4/screens/mental_helse/resultat/resultat.dart';
import 'package:flutter_application_4/screens/mental_helse/test_page/test.dart';
import 'package:get/get.dart';

import 'mh_main_controller.dart';

//Du kan bytte ut navnet "MhMain" med et annet
class MhMain extends StatefulWidget {
  @override
  State createState() => _MhMainState();
}

class _MhMainState extends State<MhMain> {
  GlobalKey _bottomNavigationBarKey = GlobalKey();

  Size bottomNavigationBarSize = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    bottomNavigationBarSize = MediaQuery.of(context).size;
    return GetBuilder<MhMainController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  Home(),
                  Logg(),
                  Resultat(),
                  Test(),
                ],
              ),
            ),
            bottomNavigationBar: Stack(children: <Widget>[
              Positioned(
                child: BottomNavigationBar(
                  key: _bottomNavigationBarKey,
                  //funksjonaliteten til navigasjonsbaren ligger i controller
                  onTap: controller.changeTabIndex,
                  currentIndex: controller.tabIndex,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  //her er hvert element i navigasjonsbaren, du kan bytte ut ikonene med andre.
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Hjem"),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.edit),
                      label: "Logg",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.auto_graph),
                      label: "Progresjon",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.bookmarks_rounded),
                      label: "Test",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.view_list_outlined,
                      ),
                      label: "Resultat",
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: (bottomNavigationBarSize.width / 4) * controller.tabIndex,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 3,
                      width: (bottomNavigationBarSize.width - 80) / 5,
                    )),
              ),
            ]));
      },
    );
  }
}
