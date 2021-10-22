import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_pages.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "test 123",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.Home,
      getPages: AppPages.routes,
    );
  }
}
