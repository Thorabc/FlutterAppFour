import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
                  Resultat(),
                  Test(),
                ],
              ),
            ),
            bottomNavigationBar: Stack(children: <Widget>[
              Positioned(
                child: BottomNavigationBar(
                  key: _bottomNavigationBarKey,
                  onTap: controller.changeTabIndex,
                  currentIndex: controller.tabIndex,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
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
                        width: (bottomNavigationBarSize.width - 80) / 4,
                        color: Theme.of(context).primaryColor)),
              ),
            ]));
      },
    );
  }
}


// class MhMain extends GetView<MhMainController> {
//   final TextStyle unselectedLabelStyle = TextStyle(
//       color: Colors.white.withOpacity(0.5),
//       fontWeight: FontWeight.w500,
//       fontSize: 12);

//   final TextStyle selectedLabelStyle =
//       TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);
//   @override
//   buildBottomNavigationMenu(context, MhMainController) {
//     return Obx(() => Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [
//               Colors.blue.shade50,
//               Colors.blue.shade200,
//               Colors.blue.shade400,
//               Colors.blue.shade600,
//             ],
//           )),
//           child: MediaQuery(
//               data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//               child: SizedBox(
//                 height: 54,
//                 child: BottomNavigationBar(
//                   showUnselectedLabels: true,
//                   showSelectedLabels: true,
//                   onTap: MhMainController.changeTabIndex,
//                   currentIndex: MhMainController.tabIndex.value,
//                   unselectedItemColor: Colors.white.withOpacity(0.5),
//                   selectedItemColor: Colors.white,
//                   unselectedLabelStyle: unselectedLabelStyle,
//                   selectedLabelStyle: selectedLabelStyle,
//                   items: [
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         child: Icon(
//                           Icons.home,
//                           size: 20.0,
//                         ),
//                       ),
//                       label: 'Hjem',
//                       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         child: Icon(
//                           Icons.edit,
//                           size: 20.0,
//                         ),
//                       ),
//                       label: 'Logg',
//                       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         child: Icon(
//                           Icons.auto_graph,
//                           size: 20.0,
//                         ),
//                       ),
//                       label: 'Progresjon',
//                       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         child: Icon(
//                           Icons.bookmarks_rounded,
//                           size: 20.0,
//                         ),
//                       ),
//                       label: 'Test',
//                       backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         child: Icon(
//                           Icons.view_list_outlined,
//                           size: 20.0,
//                         ),
//                       ),
//                       label: 'Resultater',
//                     ),
//                   ],
//                 ),
//               )),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       bottomNavigationBar:
//           buildBottomNavigationMenu(context, MhMainController()),
//       body: Obx(() => IndexedStack(
//             index: MhMainController.tabIndex.value,
//             children: [
//               Resultat(),
//               Test(),
//             ],
//           )),
//     ));
//   }
// }
