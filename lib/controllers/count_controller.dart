import 'package:get/get.dart';

class CounterController extends GetxController {
  Map<String, int> menu = {'menuA': 0, 'menuB': 0, 'menuC': 0};

  void add({id}) {
    menu.update('$id', (value) => value += 1);
    update(['$id']);
  }

  void minus({id}) {
    menu.update('$id', (value) => value -= 1);
    update(['$id']);
  }
}
