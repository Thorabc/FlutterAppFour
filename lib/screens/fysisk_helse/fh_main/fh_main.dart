import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_kosthold/fh_kosthold.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_logg/fh_logg.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_home/fh_home.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_progresjon/fh_progresjon.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_resultat/fh_resultat.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_test_page/fh_test.dart';
import 'package:flutter_application_4/theme/theme_constants.dart';
import 'package:get/get.dart';

import 'fh_main_controller.dart';

//Du kan bytte ut navnet "MhMain" med et annet
class FhMain extends StatefulWidget {
  @override
  State createState() => _FhMainState();
}

class _FhMainState extends State<FhMain> {
  GlobalKey _bottomNavigationBarKey = GlobalKey();

  Size bottomNavigationBarSize = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    bottomNavigationBarSize = MediaQuery.of(context).size;
    return GetBuilder<FhMainController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  //  gradient: AppWidgets.backgroundGradient,
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
                child: IndexedStack(
                  index: controller.tabIndex,
                  children: [
                    FhHome(),
                    FhLogg(),
                    FhKosthold(),
                    FhProgresjon(),
                    FhTest(),
                    FhResultat(),
                  ],
                ),
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
                  backgroundColor: Colors.black54,
                  unselectedItemColor: Colors.white60,
                  selectedItemColor: Colors.white,
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
                      icon: Icon(Icons.food_bank),
                      label: "Kosthold",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.auto_graph),
                      label: "Fremgang",
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
                      width: (bottomNavigationBarSize.width - 80) / 6,
                    )),
              ),
            ]));
      },
    );
  }
}
