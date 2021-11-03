import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_pages.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:flutter_application_4/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  // Modify from here
  runApp(App());
  // to here.
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.buildAppTheme(),
      title: "Selvutviklingsapp",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.Login,
      getPages: AppPages.routes,
    );
  }
}
