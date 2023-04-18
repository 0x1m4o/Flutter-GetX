import '../pages/detail.dart';
import '../routes/routes_name.dart';
import '../pages/homepage.dart';
import '../pages/product.dart';
import 'package:get/get.dart';

class RouteNames {
  static final route = [
    GetPage(
      name: NamesRoute.homepage,
      page: () => MyHome(),
    ),
    GetPage(
      name: NamesRoute.product,
      page: () => ProductPage(),
    ),
    GetPage(
      name: NamesRoute.productDetail,
      page: () => DetailPage(),
    ),
  ];
}
