import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0;
  void increment() {
    counter += 1;
    update();
  }

  void decrement() {
    counter -= 1;
    update();
  }
}
