import 'package:get/get.dart';
import './pages_name.dart';
import '../pages/homepage.dart';
import '../pages/login_page.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
    ),
  ];
}
