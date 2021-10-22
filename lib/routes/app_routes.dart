import 'package:flutter_application_4/screens/mental_helse/mh_main/mh_main.dart';

class Routes {
  Routes._();

  static const Home = Paths.home;
  static const Profile = Paths.home + Paths.profile;
  static const mhMain = Paths.home + Paths.mhMain;
  static const profile = Paths.home + Paths.mhMain + Paths.profile;
  static const logg = Paths.home + Paths.mhMain + Paths.logg;
  static const progresjon = Paths.home + Paths.mhMain + Paths.progresjon;
  static const test = Paths.home + Paths.mhMain + Paths.test;
  static const resultat = Paths.home + Paths.mhMain + Paths.resultat;
}

class Paths {
  Paths._();

  static const String home = '/home';
  static const String profile = '/profile';
  static const String logg = '/logg';
  static const String progresjon = '/progresjon';
  static const String resultat = '/resultat';
  static const String test = '/test';
  static const String mhMain = '/mh_main';
}
