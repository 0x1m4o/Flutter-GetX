import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var hidden = true.obs;
  late TextEditingController email;
  late TextEditingController password;
  var rememberme = false.obs;

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    final box = GetStorage();
    final data = box.read('dataUser');
    if (data != null) {
      email.text = data['email'];
      password.text = data['password'];
      rememberme.value = data['rememberme'];
    }
    super.onInit();
  }
}
