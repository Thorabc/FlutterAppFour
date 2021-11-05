import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_logg/mh_logg.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_home/mh_home.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_progresjon/progresjon.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_resultat/resultat.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_test_page/test.dart';
import 'package:flutter_application_4/theme/theme_constants.dart';
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
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          child: Scaffold(
              body: SafeArea(
                child: Container(
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
                  child: IndexedStack(
                    index: controller.tabIndex,
                    children: [
                      MhHome(),
                      MhLogg(),
                      MhProgresjon(),
                      MhTest(),
                      MhResultat(),
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
                  left:
                      (bottomNavigationBarSize.width / 4) * controller.tabIndex,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 3,
                        width: (bottomNavigationBarSize.width - 80) / 5,
                      )),
                ),
              ])),
        );
      },
    );
  }
}
