import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var counter = 0.obs;

  final userText = TextEditingController();
  final password = TextEditingController();

  void add() {
    counter++;
  }

  void delete() {
    counter++;
  }
}
