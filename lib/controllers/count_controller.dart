import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var countChanges = 0.obs;

  void change() {
    countChanges += 1;
  }

  void reset() {
    countChanges.value = 0;
  }

  @override
  void onInit() {
    print('onInit');
    ever(countChanges, (callback) => print('ever'));
    everAll([countChanges], (callback) => print('everAll'));
    once(countChanges, (callback) => print('once'));
    debounce(countChanges, (callback) => print('debounce'),
        time: Duration(seconds: 3));
    interval(countChanges, (callback) => print('interval'),
        time: Duration(seconds: 3));
    super.onInit();
  }
}
