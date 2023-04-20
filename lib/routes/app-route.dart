// ignore_for_file: file_names

import 'package:flutter_getx/controllers/mycontroller.dart';

import './route-name.dart';
import '../bindings/mybinding.dart';
import '../pages/shop.dart';
import '../pages/homepage.dart';
import 'package:get/get.dart';

class AppPage {
  static final routes = [
    /// Kita juga dapat menggunakan binding di route to named
    GetPage(name: RouteNames.home, page: () => MyHome()),
    GetPage(
        name: RouteNames.shop, page: () => ShopPage(), binding: ShopBinding()),
  ];
}
