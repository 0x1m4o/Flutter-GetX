import '../models/people.dart';
import 'package:get/get.dart';

class PeopleController extends GetxController {
  var peopleController = People(name: 'SwagCat', age: 25).obs;

  void changeToUpperCase() {
    peopleController.update((val) {
      peopleController.value.name =
          peopleController.value.name.toString().toUpperCase();
    });
  }
}
