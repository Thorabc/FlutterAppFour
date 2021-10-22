import 'package:flutter_application_4/screens/home/home.dart';
import 'package:flutter_application_4/screens/home/home_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/logg/logg.dart';
import 'package:flutter_application_4/screens/mental_helse/logg/logg_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/progresjon/progresjon.dart';
import 'package:flutter_application_4/screens/mental_helse/progresjon/progresjon_binding.dart';
import 'package:flutter_application_4/screens/mental_helse/resultat/resultat.dart';
import 'package:flutter_application_4/screens/mental_helse/resultat/resultat_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/test_page/test.dart';
import 'package:flutter_application_4/screens/mental_helse/test_page/test_bindings.dart';
import 'package:flutter_application_4/screens/root/root_bindings.dart';
import 'package:flutter_application_4/screens/root/root_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Home;

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
            name: Routes.Home,
            page: () => Home(),
            binding: HomeBindings(),
          ),
          GetPage(
            name: Routes.mhMain,
            page: () => MhMain(),
            binding: MhMainBindings(),
            children: [
              GetPage(
                name: Routes.logg,
                page: () => Logg(),
                binding: LoggBindings(),
              ),
              GetPage(
                name: Routes.progresjon,
                page: () => Progresjon(),
                binding: ProgresjonBindings(),
              ),
              GetPage(
                name: Routes.test,
                page: () => Test(),
                binding: TestBindings(),
              ),
              GetPage(
                name: Routes.resultat,
                page: () => Resultat(),
                binding: ResultatBindings(),
              ),
              GetPage(
                name: Routes.resultat,
                page: () => Resultat(),
                binding: ResultatBindings(),
              ),
            ],
          )
        ])
  ];
}
