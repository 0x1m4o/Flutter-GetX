import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataController extends GetxController {
  var userText = TextEditingController().obs;
  var password = TextEditingController().obs;
  var visiblePassw = true.obs;

  Future<void> setData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', 'Chandra');
    await prefs.setString('userPassword', 'Chandra123');
    userText.value.text = prefs.getString('userName').toString();
    password.value.text = prefs.getString('userPassword').toString();
  }

  void visiblePass() {
    visiblePassw.value = !visiblePassw.value;
  }
}
