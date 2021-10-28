import 'package:flutter_application_4/screens/fysisk_helse/fh_main/fh_main.dart';

class Routes {
  Routes._();

  static const Home = Paths.home;
  //MhMain
  static const mhMain = Paths.home + Paths.mhMain;
  static const MhHome = Paths.mhMain + Paths.mhHome;
  static const Mhlogg = Paths.mhMain + Paths.mhlogg;
  static const Mhprogresjon = Paths.mhMain + Paths.mhprogresjon;
  static const Mhtest = Paths.mhMain + Paths.mhtest;
  static const Mhresultat = Paths.mhMain + Paths.mhresultat;
  //FhMain
  static const FhMain = Paths.home + Paths.fhMain;
  static const FhHome = Paths.fhMain + Paths.fhHome;
  static const Fhlogg = Paths.fhMain + Paths.fhlogg;
  static const Fhprogresjon = Paths.fhMain + Paths.fhprogresjon;
  static const Fhtest = Paths.fhMain + Paths.fhtest;
  static const Fhresultat = Paths.fhMain + Paths.fhresultat;
}

class Paths {
  Paths._();

  static const String home = '/home';
  //MhMain
  static const String mhlogg = '/logg';
  static const String mhprogresjon = '/progresjon';
  static const String mhresultat = '/resultat';
  static const String mhtest = '/test_page';
  static const String mhHome = '/mh_home';
  static const String mhMain = '/mh_main';
  //FhMain
  static const String fhlogg = '/fh_logg';
  static const String fhprogresjon = '/fh_progresjon';
  static const String fhresultat = '/fh_resultat';
  static const String fhtest = '/fh_test_page';
  static const String fhHome = '/fh_home';
  static const String fhMain = '/fh_main';
}
