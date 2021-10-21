import 'package:flutter_application_4/screens/home/home.dart';
import 'package:flutter_application_4/screens/home/home_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main_bindings.dart';
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
          )
        ])
  ];
}
