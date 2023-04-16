import 'package:flutter_getx/routes/routes_name.dart';

import '../pages/homepage.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';
import '../pages/fourth_page.dart';
import 'package:get/get.dart';

class RouteNames {
  static final route = [
    GetPage(
      name: NamesRoute.homepage,
      page: () => MyHome(),
    ),
    GetPage(
      name: NamesRoute.secondPage,
      page: () => SecondPage(),
    ),
    GetPage(
      name: NamesRoute.thirdPage,
      page: () => ThirdPage(),
    ),
    GetPage(
      name: NamesRoute.fourthPage,
      page: () => FourthPage(),
    ),
  ];
}
