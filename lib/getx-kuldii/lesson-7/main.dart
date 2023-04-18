import 'package:flutter/material.dart';
import './routes/app_routes.dart';
import './routes/routes_name.dart';
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
      // initialRoute: NamesRoute.homepage,
      getPages: RouteNames.route,
    );
  }
}
