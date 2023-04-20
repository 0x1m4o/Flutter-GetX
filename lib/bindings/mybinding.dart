import '../controllers/mycontroller.dart';
import 'package:get/get.dart';

class ShopBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ShopController());
  }
}
