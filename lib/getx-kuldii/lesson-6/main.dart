import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:flutter_getx/routes/routes_name.dart';
import './pages/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHome(),
      // unknownRoute: GetPage(
      //   name: '/error-page',
      //   page: () => ErrorPage(),
      // ),
      initialRoute: NamesRoute.homepage,
      getPages: RouteNames.route,
    );
  }
}
