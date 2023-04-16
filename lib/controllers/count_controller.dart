import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0;

  void increment() {
    count += 1;
    update();
  }

  void decrement() {
    if (count != 0) count -= 1;
    update();
  }
}
