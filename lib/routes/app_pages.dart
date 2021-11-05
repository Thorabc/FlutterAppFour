import 'package:flutter_application_4/screens/auth/login/login.dart';
import 'package:flutter_application_4/screens/auth/login/login_binding.dart';
import 'package:flutter_application_4/screens/auth/register/register.dart';
import 'package:flutter_application_4/screens/auth/register/register_binding.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_home/fh_home.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_home/fh_home_bindings.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_logg/fh_logg.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_logg/fh_logg_bindings.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_main/fh_main.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_main/fh_main_bindings.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_progresjon/fh_progresjon.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_progresjon/fh_progresjon_bindings.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_resultat/fh_resultat.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_resultat/fh_resultat_bindings.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_test_page/fh_test.dart';
import 'package:flutter_application_4/screens/fysisk_helse/fh_test_page/fh_test__bindings.dart';
import 'package:flutter_application_4/screens/home/home.dart';
import 'package:flutter_application_4/screens/home/home_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_home/mh_home.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_home/mh_home_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_logg/mh_logg.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_logg/mh_logg_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_progresjon/progresjon.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_progresjon/progresjon_binding.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_resultat/resultat.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_resultat/resultat_bindings.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_test_page/test.dart';
import 'package:flutter_application_4/screens/mental_helse/mh_test_page/test_bindings.dart';
import 'package:flutter_application_4/screens/root/root_bindings.dart';
import 'package:flutter_application_4/screens/root/root_view.dart';
import 'package:flutter_application_4/screens/splashScreen/splash.dart';
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
            name: Routes.Splash,
            page: () => Splash(),
          ),
          GetPage(
            name: Routes.Register,
            page: () => Register(),
            binding: RegisterBindings(),
          ),
          GetPage(
            name: Routes.Login,
            page: () => Login(),
            binding: LoginBindings(),
          ),
          GetPage(
            name: Routes.Home,
            page: () => Home(
              email: '',
            ),
            binding: HomeBindings(),
          ),
          //MhMain
          GetPage(
            name: Routes.mhMain,
            page: () => MhMain(),
            binding: MhMainBindings(),
            children: [
              GetPage(
                name: Routes.MhHome,
                page: () => MhHome(),
                binding: MhHomeBindings(),
              ),
              GetPage(
                name: Routes.Mhlogg,
                page: () => MhLogg(),
                binding: MhLoggBindings(),
              ),
              GetPage(
                name: Routes.Mhprogresjon,
                page: () => MhProgresjon(),
                binding: MhProgresjonBindings(),
              ),
              GetPage(
                name: Routes.Mhtest,
                page: () => MhTest(),
                binding: MhTestBindings(),
              ),
              GetPage(
                name: Routes.Mhresultat,
                page: () => MhResultat(),
                binding: MhResultatBindings(),
              ),
            ],
          ),
          //FhMain
          GetPage(
            name: Routes.FhMain,
            page: () => FhMain(),
            binding: FhMainBindings(),
            children: [
              GetPage(
                name: Routes.FhHome,
                page: () => FhHome(),
                binding: FhHomeBindings(),
              ),
              GetPage(
                name: Routes.Fhlogg,
                page: () => FhLogg(),
                binding: FhLoggBindings(),
              ),
              GetPage(
                name: Routes.Fhprogresjon,
                page: () => FhProgresjon(),
                binding: FhProgresjonBindings(),
              ),
              GetPage(
                name: Routes.Fhtest,
                page: () => FhTest(),
                binding: FhTestBindings(),
              ),
              GetPage(
                name: Routes.Fhresultat,
                page: () => FhResultat(),
                binding: FhResultatBindings(),
              ),
            ],
          )
        ])
  ];
}
